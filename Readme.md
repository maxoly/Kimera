# Kimera

Welcome to Kimera.

[![Build Status](https://travis-ci.org/maxoly/Kimera.png?branch=master)](https://travis-ci.org/maxoly/Kimera)

## Disclaimer
All code on this repository is for educational purposes only and is not intended for production code. 
The code is supplied "as is". Use at your own risks.

# Kimera Mobile

Kimera Mobile represents the typical iOS application client / server.


## Project Architecture

### Folder Structure

* Application: contains all file related to main, UIApplication, AppDelegate and project plist
    * change Build Settings -> Info Plist file (INFOPLIST_FILE) for plist file
    * change Build Settings -> Prefix Header (GCC_PREFIX_HEADER)
        
### Application Layer

#### Presentation Layer

TBD

#### DomainModel Layer

TBD

#### Networking Layer

TBD


## Debugging

### Use Marco

Don't use standard NSLog, instead use a simple macro


```objc
#if defined DEBUG
    #define KRMLog(s, ...) NSLog((@"%s [Line %d] " s), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
    #define KRMLog(s, ...)
#endif
```