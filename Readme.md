# Kimera

Welcome to Kimera.

[![Build Status](https://travis-ci.org/maxoly/Kimera.png?branch=master)](https://travis-ci.org/maxoly/Kimera)

## Disclaimer
All code on this repository is for educational purposes only and is not intended for production code. The code is supplied "as is". Use at your own risks.

## Kimera Mobile

Kimera Mobile represents the typical client/server iOS application.

## Installation

To properly configure the project is necessary:

* Install Command Line Tools in Xcode (Xcode > Preferences > Downloads > Components)
* Install and configure [CocoaPods](http://cocoapods.org/)


Then download the project:

```bash
$ git clone git@github.com:maxoly/Kymera.git
```

To check if everything is working properly launch the compilation:

```bash
$ ant release
```

The result should be  `** BUILD SUCCEEDED **`.

## Build & Deploy

The project is provided with an Ant Buildfile called `build.xml`, located in the root folder. Inside Buildfile there are some targets that can perform common operations.

For example:

* `ant debug`: build the project in debug configuration
* `ant release`: build the project in release configuration
* `ant deploy`: compile the project in adhoc configuration, generates ipa, creates a changelog, uploads the ipa on testflight server and creates a new tag
* `ant test`: execute unit tests in the project
* `ant genstring`: is a utility that generates Localizable.string

### TestFlight

This application can be deployed, for testing, on [TestFlight] (http://testflightapp.com) server. To deploy the app, through this service, all devices UDIDs must also be present in its provisioning file and placed in a special folder.

To be able to properly deploy on TestFlight is therefore necessary to:

* Create the AdHoc provisioning on [Developer Portal] (http://developer.apple.com);
* Place the provisioning file in `Kimera.Build.Scripts/embedded.mobileprovision`;
* Every developer that wants to deploy the application must create an environment variable with his own TestFlight [token](https://testflightapp.com/account/#api), in this way: `export TESTFLIGHT_APITOKEN=aabbccddffgghhiillmmnnooppqqwwvvzz`
* At this point you have run `ant deploy`

At the end of the procedure all registered users should receive a confirmation email with the option to install the latest version of the app directly from the device.

## Technical Specifications

Below is a summary of the **technical specifications**:

```text
App Type                            Universal (iPhone + iPad)
Operating Systems                   iOS 5.0 / 5.1 / 6.0 / 6.1
Supported Devices                   iPhone 4/4S/5/5C/5S and iPad 2/3/4
Supported Displays                  Retina + non retina
Orientations                        only Landscape

Language                            Objective-C 2.0
Memory Managment                    ARC (Automatic Reference Counting)
Target iOS                          5.0
Third-part libraries Managment      CocoaPods
Networking framework                RestKit
```