import lldb

def arg_summary(valobj, internal_dict):
	nameAsString = valobj.GetChildMemberWithName('_name').GetSummary()
	detailAsString = valobj.GetChildMemberWithName('_detail').GetSummary()
    
	return 'Name: ' + nameAsString + ' - detail: ' + detailAsString

def __lldb_init_module(debugger, dict):
    debugger.HandleCommand('type summary add KMRMArgument -F KMRMArgument_summary.arg_summary')