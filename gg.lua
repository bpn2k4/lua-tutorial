gg = {}

gg.ANDROID_SDK_INT = 1
gg.ASM_ARM = 2
gg.ASM_ARM64 = 3
gg.ASM_THUMB = 4
gg.BUILD = 5
gg.CACHE_DIR = 6
gg.DUMP_SKIP_SYSTEM_LIBS = 7
gg.EXT_CACHE_DIR = 8
gg.EXT_FILES_DIR = 9
gg.EXT_STORAGE = 10
gg.FILES_DIR = 11
gg.FREEZE_IN_RANGE = 12
gg.FREEZE_MAY_DECREASE = 13
gg.FREEZE_MAY_INCREASE = 14
gg.FREEZE_NORMAL = 15
gg.LOAD_APPEND = 16
gg.LOAD_VALUES = 17
gg.LOAD_VALUES_FREEZE = 18
gg.PACKAGE = 19
gg.POINTER_EXECUTABLE = 20
gg.POINTER_EXECUTABLE_WRITABLE = 21
gg.POINTER_NO = 22
gg.POINTER_READ_ONLY = 23
gg.POINTER_WRITABLE = 24
gg.PROT_EXEC = 25
gg.PROT_NONE = 26
gg.PROT_READ = 27
gg.PROT_WRITE = 28
gg.REGION_ANONYMOUS = 29
gg.REGION_ASHMEM = 30
gg.REGION_BAD = 31
gg.REGION_C_ALLOC = 32
gg.REGION_C_BSS = 33
gg.REGION_C_DATA = 34
gg.REGION_C_HEAP = 35
gg.REGION_CODE_APP = 36
gg.REGION_CODE_SYS = 37
gg.REGION_JAVA = 38
gg.REGION_JAVA_HEAP = 39
gg.REGION_OTHER = 40
gg.REGION_PPSSPP = 41
gg.REGION_STACK = 42
gg.REGION_VIDEO = 43
gg.SAVE_AS_TEXT = 44
gg.SIGN_EQUAL = 45
gg.SIGN_FUZZY_EQUAL = 46
gg.SIGN_FUZZY_GREATER = 47
gg.SIGN_FUZZY_LESS = 48
gg.SIGN_FUZZY_NOT_EQUAL = 49
gg.SIGN_GREATER_OR_EQUAL = 50
gg.SIGN_LESS_OR_EQUAL = 51
gg.SIGN_NOT_EQUAL = 52
gg.TAB_MEMORY_EDITOR = 53
gg.TAB_SAVED_LIST = 54
gg.TAB_SEARCH = 55
gg.TAB_SETTINGS = 56
gg.TYPE_AUTO = 57
gg.TYPE_BYTE = 58
gg.TYPE_DOUBLE = 59
gg.TYPE_DWORD = 60
gg.TYPE_FLOAT = 61
gg.TYPE_QWORD = 62
gg.TYPE_WORD = 63
gg.TYPE_XOR = 64
gg.VERSION = 65
gg.VERSION_INT = 66


---Displays a dialog with several buttons.
---
---The return result depends on which of the buttons was pressed. The dialog can be canceled with the "Back" button (return code 0).
---@param text? string Text message. (default: text)
---@param positive? string Text for positive button. This button return code 1. (default: positive = 'ok')
---@param negative? string Text for negative button. This button return code 2. (default: negative = nil)
---@param neutral? string Text for neutral button. This button return code 3. (default: neutral = nil)
---@return integer any if dialog canceled - 0, else: 1 for positive, 2 for negative, 3 for neutral buttons.
function gg.alert(text, positive, negative, neutral)
  print(text, positive, negative, neutral)
  return 1
end

---Allocated memory page (4 KB) in the target process.
---@param mode? integer Bit mask of flags PROT_*. (default: mode = gg.PROT_READ | gg.PROT_EXEC)
---@param address? integer If is not 0, then the kernel takes it as a hint about where to place the page; on Android, the page will be allocated at a nearby address page boundary. (default: address = 0)
---@return boolean | string any Address of the page or string with error.
function gg.allocatePage(mode, address)
  print(mode, address)
  return true
end

---Gets the text bytes in the specified encoding.
---@param text? string  (default: text)
---@param encoding? string Possible values: 'ISO-8859-1', 'US-ASCII', 'UTF-16', 'UTF-16BE', 'UTF-16LE', 'UTF-8' (default: encoding = 'UTF-8')
---@return string any A table with a set of bytes in the specified encoding.
function gg.bytes(text, encoding)
  print(text, encoding)
  return ""
end

---Displays the selection dialog from the list.
---
---The list is made up of the items table. Selected sets the index of the table that will be selected by default. Items must be numberic-array if you want show items in specified order.
---@param items? table Table with items for choice. (default: items)
---@param selected? string Is not specified or is specified as nil, then the list will be without the default choice. (default: selected = nil)
---@param message? string Specifies the optional title of the dialog box. (default: message = nil)
---@return boolean | string any nil if the dialog has been canceled, or the index of the selected item.
function gg.choice(items, selected, message)
  print(items, selected, message)
  return true
end

---Clear the saved list.

---@return boolean | string any true or string with error.
function gg.clearList()
  print()
  return true
end

---Clear the list of search results.

---@return nil any
function gg.clearResults()
  print()
  return true
end

---Copy memory.
---@param from? integer Address for source of copy. (default: from)
---@param to? integer Address for destination of copy. (default: to)
---@param bytes? integer Amount bytes to copy. (default: bytes)
---@return boolean | string any true or string with error.
function gg.copyMemory(from, to, bytes)
  print(from, to, bytes)
  return true
end

---Copy text to the clipboard.
---
---If the second parameter is true or not specified, the text will be converted as a number from the English locale to the selected one.
---@param text? string The text for copy. (default: text)
---@param fixLocale? boolean Flag to disable fix locale-specific separators. (default: fixLocale = true)
---@return nil any
function gg.copyText(text, fixLocale)
  print(text, fixLocale)
  return true
end

---Disassemble the specified value.
---@param type? integer Type. One of the constants ASM_*. Throws an error if a non-existent type is passed. (default: type)
---@param address? integer The address of the value. May be needed for some opcodes. (default: address)
---@param opcode? integer Disassembly instruction. To disassemble Thumb32, the first 16-bit instruction should be in the lower half-word of the opcode, and the second in the upper half-word. (default: opcode)
---@return string any string Disassembled opcode string.
function gg.disasm(type, address, opcode)
  print(type, address, opcode)
  return ""
end

---Dump memory to files on disk.
---@param from? integer Address for start dump. Will be rounded to largest possible memory page. (default: from)
---@param to? integer Address for end dump. Will be rounded to smallest possible memory page. (default: to)
---@param dir? string Directory for save dump files. (default: dir)
---@param flags? integer Set of flags DUMP_* or nil. (default: flags = nil)
---@return boolean | string any true or string with error.
function gg.dumpMemory(from, to, dir, flags)
  print(from, to, dir, flags)
  return true
end

---Edit all search results.
---
---Before call this method you must load results via getResults. Value will be applied only for results with specified type.
---@param value? string String with data for edit. Must be in English locale. (default: value)
---@param type? integer One constant from TYPE_*. (default: type)
---@return boolean | string any Int with count of changes or string with error.
function gg.editAll(value, type)
  print(value, type)
  return true
end

---Get active tab in the GameGuardian UI.

---@return integer any int One of the constants TAB_*.
function gg.getActiveTab()
  print()
  return 1
end

---Gets the filename of the currently running script.

---@return string any The string with the filename of the currently running script.
function gg.getFile()
  print()
  return ""
end

---Gets the current line number of the script being executed.

---@return integer any The current line number of the script being executed.
function gg.getLine()
  print()
  return 1
end

---Return the contents of the saved list as a table.

---@return boolean | string any Table with results or string with error. Each element is a table with the following fields: address (long), value (number), flags (one of the constants TYPE_*), name (string), freeze (boolean), freezeType (one of the constants FREEZE_*), freezeFrom (string), freezeTo (string).
function gg.getListItems()
  print()
  return true
end

---Gets the string with the currently selected locale in the GameGuardian.

---@return string any The string with the currently selected locale in the GameGuardian.
function gg.getLocale()
  print()
  return ""
end

---Return memory regions as bit mask of flags REGION_*.

---@return integer any Bit mask of flags REGION_*.
function gg.getRanges()
  print()
  return 1
end

---Get the list of memory regions of the selected process.
---@param filter? string The filter string. If specified, only those results that fall under the filter will be returned. Optional. The filter supports wildcards: ^ - the start of the data, $ - the end of the data, * - any number of any characters, ? - the one any character. (default: filter = '')
---@return table any A list table with memory regions. Each element is a table with fields: state, start, end, type, name, internalName.
function gg.getRangesList(filter)
  print(filter)
  return table
end

---Load results into results list and return its as a table.
---@param maxCount? integer Max count of loaded results. (default: maxCount)
---@param skip? integer The count of skipped results from the beginning. By default - 0. (default: skip = 0)
---@param addressMin? integer The minimum value of the address. Number or nil. (default: addressMin = nil)
---@param addressMax? integer The maximum value of the address. Number or nil. (default: addressMax = nil)
---@param valueMin? string The minimum value of the value. Number as string or nil. (default: valueMin = nil)
---@param valueMax? string The maximum value of the value. Number as string or nil. (default: valueMax = nil)
---@param type? integer Set of flags TYPE_* or nil. (default: type = nil)
---@param fractional? string Filter by fractional values. If the first character is "!", then the filter will exclude all values whose fractional part matches the specified one. (default: fractional = nil)
---@param pointer? integer Set of flags POINTER_* or nil. (default: pointer = nil)
---@return boolean | string any Table with results or string with error. Each element is a table with three keys: address (long), value (number), flags (one of the constants TYPE_*).
function gg.getResults(maxCount, skip, addressMin, addressMax, valueMin, valueMax, type, fractional, pointer)
  print(maxCount, skip, addressMin, addressMax, valueMin, valueMax, type, fractional, pointer)
  return true
end

---Get the number of found results.

---@return integer any The number of found results.
function gg.getResultsCount()
  print()
  return 1
end

---Returns the selected adresses in the memory editor.

---@return boolean | string any Table with adresses (long) or string with error.
function gg.getSelectedElements()
  print()
  return true
end

---Returns the selected items in the saved lists.

---@return boolean | string any Table with results or string with error. Each element is a table with the following fields: address (long), value (number), flags (one of the constants TYPE_*), name (string), freeze (boolean), freezeType (one of the constants FREEZE_*), freezeFrom (string), freezeTo (string).
function gg.getSelectedListItems()
  print()
  return true
end

---Returns the selected items in the search results.

---@return boolean | string any Table with results or string with error. Each element is a table with three keys: address (long), value (number), flags (one of the constants TYPE_*).
function gg.getSelectedResults()
  print()
  return true
end

---Get the current speed from the speedhack.
---@return number any The current speed from the speedhack.
function gg.getSpeed()
  print()
  return 1.0
end

---Get a table with information about the selected process if possible.
---
---The set of fields can be different. Print the resulting table to see the available fields.
---
---Possible fields: firstInstallTime, lastUpdateTime, packageName, sharedUserId, sharedUserLabel, versionCode, versionName, activities (name, label), installer, enabledSetting, backupAgentName, className, dataDir, descriptionRes, flags, icon, labelRes, logo, manageSpaceActivityName, name, nativeLibraryDir, permission, processName, publicSourceDir, sourceDir, targetSdkVersion, taskAffinity, theme, uid, label, cmdLine, pid, x64, RSS.
---
---cmdLine - The contents of /proc/pid/cmdline. pid - PID of the process. x64 - True if the 64-bit process. RSS - The amount of RSS memory for the process, in KB.
---
---Read about PackageInfo and ApplicationInfo in Android for means each field.

---@return boolean | string any A table with information about the selected process or nil.
function gg.getTargetInfo()
  print()
  return true
end

---Get the package name of the selected process, if possible.

---@return boolean | string any The package name of the selected process as string or nil.
function gg.getTargetPackage()
  print()
  return true
end

---Gets the values for the list of items.
---@param values? table The table as a list of tables with address and flags fields (one of the constants TYPE_*). (default: values)
---@return boolean | string any A new table with results or string with error. Each element is a table with three keys: address (long), value (number), flags (one of the constants TYPE_*).
function gg.getValues(values)
  print(values)
  return true
end

---Get the memory regions for the passed value table.
---@param values? table The table can be either an address list or a list of tables with the address field. (default: values)
---@return boolean | string any A table where each key, from the original table, will be associated with a short region code (Ch, for example). Or string with error.
function gg.getValuesRange(values)
  print(values)
  return true
end

---Go to the address in the memory editor.
---@param address? integer Desired address. (default: address)
---@return nil any
function gg.gotoAddress(address)
  print(address)
  return true
end

---Hides the UI button.

---@return nil any
function gg.hideUiButton()
  print()
  return true
end

---Gets the click status of the ui button.
---
---The call resets the click status.

---@return boolean | string any true if the button has been clicked since the last check. false - if there was no click. nil - if the button is hidden.
function gg.isClickedUiButton()
  print()
  return true
end

---Check whether the specified application is installed on the system by the package name.
---@param pkg? string String with package name. (default: pkg)
---@return boolean any true if package installed or false otherwise.
function gg.isPackageInstalled(pkg)
  print(pkg)
  return true
end

---Get pause state of the selected process.

---@return boolean any true if the process paused or false otherwise.
function gg.isProcessPaused()
  print()
  return true
end

---Check if the GameGuardian UI is open.

---@return boolean any true if the GameGuardian UI open or false otherwise.
function gg.isVisible()
  print()
  return true
end

---Load the saved list from the file.
---@param file? string File for load. (default: file)
---@param flags? integer Set of flags LOAD_*. (default: flags = 0)
---@return boolean | string any true or string with error.
function gg.loadList(file, flags)
  print(file, flags)
  return true
end

---Loads the search results from the table.
---
---Existing search results will be cleared.
---@param results? table The table as a list of tables with address and flags fields (one of the constants TYPE_*). (default: results)
---@return boolean | string any true or string with error.
function gg.loadResults(results)
  print(results)
  return true
end

---Performs a GET or POST request over HTTP or HTTPS.
---
---The first time the function is called, the user is asked to access the Internet. Request one for each script run. If the user declines access, all subsequent calls will immediately return an error. If allowed - will be processed immediately. Permission to access must be obtained each time the script is run.
---
---The function executes the query and returns a table with the result on success. On error, the string with the error text will be returned. In logcat there will be more information.
---
---The result table can contain the following fields:
---
---If the data string is not nil, the POST request will be executed, otherwise the GET.
---
---By default, POST requests are set to "Content-Type" = "application/x-www-form-urlencoded". You can specify this header yourself to specify the desired type. Similarly, the header "Content-Length" is set. Other headers can be set by the system and depend on the implementation of the Android.
---
---HTTPS requests do not perform certificate validation.
---@param url? string A string with a URL. (default: url)
---@param headers? table A table with request headers. The key is the name. The value is a table or a string. If this is a table, then the keys are ignored, and the values ​​are used. (default: headers = {})
---@param data? string A string with data for the POST request. If you specify nil, then there will be a GET request. (default: data = nil)
---@return boolean | string any The table on success, the string on error.
function gg.makeRequest(url, headers, data)
  print(url, headers, data)
  return true
end

---Displays the multiple choice dialog.
---
---Items must be numberic-array if you want show items in specified order.
---@param items? table Table with items for choice. (default: items)
---@param selection? table The table specifies the selection status for each item from items by same key. If key not found then the element will be unchecked. (default: selection = {})
---@param message? string Specifies the optional title of the dialog box. (default: message = nil)
---@return boolean | string any nil if the dialog has been canceled, or a table with the selected keys and values true (analogue of the selected param).
function gg.multiChoice(items, selection, message)
  print(items, selection, message)
  return true
end

---Replaces the localized decimal separator and thousands separator with separators used in Lua (such as in English).
---@param num? string Number or string to replace. (default: num)
---@return string any Fixed number as string.
function gg.numberFromLocale(num)
  print(num)
  return ""
end

---Replaces the decimal separator and the thousands separator with a localized version.
---@param num? string Number or string to replace. (default: num)
---@return string any Fixed number as string.
function gg.numberToLocale(num)
  print(num)
  return ""
end

---Force kill the selected process.
---
---If you call this call too often, your script may be interrupted.

---@return boolean any true on success or false otherwise.
function gg.processKill()
  print()
  return true
end

---Pauses the selected process.

---@return boolean any true on success or false otherwise.
function gg.processPause()
  print()
  return true
end

---Resumes the selected process if it paused.

---@return boolean any true on success or false otherwise.
function gg.processResume()
  print()
  return true
end

---Toggle the pause state of the selected process.
---
---If process paused then it will be resumed else it will be paused.

---@return boolean any true on success or false otherwise.
function gg.processToggle()
  print()
  return true
end

---Displays the dialog for data entry.
---
---For respect order of fields prompts must be numeric-array.
---
---Also for the types 'number', 'setting', 'speed', the separators are converted to a localized version and vice versa during output.
---
---For example, the string '6,789.12345' will be in the form displayed as '6789,12345' for the German locale (',' - decimal separator, '.' - thousands separator). If the user enters '4.567,89', then the script will receive '4567.89'.
---
---To display the seek bar, you must specify the type 'number', the minimum and maximum value at the end of the prompt text, separated by a semicolon and surrounded by square brackets. The minimum value must be less than the maximum. If the default value is not in the range, the closest match will be used. Only integers can be used. The step size is always 1.
---
---See examples.
---
---If the config for seek bar is not recognized, the usual input of a number as text will be used.
---@param prompts? table The table specifies the keys and description for each input field. (default: prompts)
---@param defaults? table The table specifies the default values for each key from prompts. (default: defaults = {})
---@param types? table The table specifies the types for each key from prompts. Valid types: 'number', 'text', 'path', 'file', 'new_file', 'setting', 'speed', 'checkbox'. From the type depends output of additional elements near the input field (for example, buttons for selecting a path or file, internal or external keyboard and so on). (default: types = {})
---@return boolean | string any nil if the dialog has been canceled, or the table with keys from prompts and values from input fields.
function gg.prompt(prompts, defaults, types)
  print(prompts, defaults, types)
  return true
end

---Perform an address refine search with the specified parameters.
---
---If no results in results list then do nothing.
---@param text? string Search string. The format same as the format for the search from the GameGuardian UI. But it must be in English locale. (default: text)
---@param mask? integer Mask. Default is -1 (0xFFFFFFFFFFFFFFFF). (default: mask = -1)
---@param type? integer Type. One of the constants TYPE_*. (default: type = gg.TYPE_AUTO)
---@param sign? integer Sign. SIGN_EQUAL or SIGN_NOT_EQUAL. (default: sign = gg.SIGN_EQUAL)
---@param memoryFrom? integer Start memory address for the search. (default: memoryFrom = 0)
---@param memoryTo? integer End memory address for the search. (default: memoryTo = -1)
---@param limit? integer Stopping the search after finding the specified number of results. 0 means to search all results. (default: limit = 0)
---@return boolean | string any true or string with error.
function gg.refineAddress(text, mask, type, sign, memoryFrom, memoryTo, limit)
  print(text, mask, type, sign, memoryFrom, memoryTo, limit)
  return true
end

---Perform a refine search for a number, with the specified parameters.
---
---If no results in results list then do nothing.
---@param text? string String for search. The format same as the format for the search from the GameGuardian UI. But it must be in English locale. (default: text)
---@param type? integer Type. One of the constants TYPE_*. (default: type = gg.TYPE_AUTO)
---@param encrypted? boolean Flag for run search encrypted values. (default: encrypted = false)
---@param sign? integer Sign. One of the constants SIGN_*. (default: sign = gg.SIGN_EQUAL)
---@param memoryFrom? integer Start memory address for the search. (default: memoryFrom = 0)
---@param memoryTo? integer End memory address for the search. (default: memoryTo = -1)
---@param limit? integer Stopping the search after finding the specified number of results. 0 means to search all results. (default: limit = 0)
---@return boolean | string any true or string with error.
function gg.refineNumber(text, type, encrypted, sign, memoryFrom, memoryTo, limit)
  print(text, type, encrypted, sign, memoryFrom, memoryTo, limit)
  return true
end

---Remove items from the saved list.
---@param items? table The table as a list of tables with address. Or the table as a list of adresses. (default: items)
---@return boolean | string any True or string with error.
function gg.removeListItems(items)
  print(items)
  return true
end

---Remove results from the list of results found.
---@param results? table The table as a list of tables with address and flags fields (one of the constants TYPE_*). (default: results)
---@return boolean | string any true or string with error.
function gg.removeResults(results)
  print(results)
  return true
end

---Checks the version of GameGuardian.
---
---If the version or build number is lower than required, the script will be ended with the message to update GameGuardian.
---@param version? string Minimal version of GameGuardian to run the script. (default: version = nil)
---@param build? integer Minimal build number to run the script. Optional. (default: build = 0)
---@return nil any
function gg.require(version, build)
  print(version, build)
  return true
end

---Save the saved list to the file.
---@param file? string File to save. (default: file)
---@param flags? integer Set of flags SAVE_*. (default: flags = 0)
---@return boolean | string any true or string with error.
function gg.saveList(file, flags)
  print(file, flags)
  return true
end

---Saves the variable to a file.
---
---The result of the execution will be a .lua file, which can then be loaded via
---
---Stores only strings, numbers, and tables. Cyclic references are processed correctly. If you need something more, read: lua-users wiki: Table Serialization
---@param variable? boolean | string Variable to save. (default: variable)
---@param filename? string Full path to save the file. (default: filename)
---@return boolean | string any true or string with error.
function gg.saveVariable(variable, filename)
  print(variable, filename)
  return true
end

---Perform an address search with the specified parameters.
---
---If no results in results list then perform new search, else refine search. So if you need to perform a search, without refine, you must first call clearResults.
---@param text? string Search string. The format same as the format for the search from the GameGuardian UI. But it must be in English locale. (default: text)
---@param mask? integer Mask. Default is -1 (0xFFFFFFFFFFFFFFFF). (default: mask = -1)
---@param type? integer Type. One of the constants TYPE_*. (default: type = gg.TYPE_AUTO)
---@param sign? integer Sign. SIGN_EQUAL or SIGN_NOT_EQUAL. (default: sign = gg.SIGN_EQUAL)
---@param memoryFrom? integer Start memory address for the search. (default: memoryFrom = 0)
---@param memoryTo? integer End memory address for the search. (default: memoryTo = -1)
---@param limit? integer Stopping the search after finding the specified number of results. 0 means to search all results. (default: limit = 0)
---@return boolean | string any true or string with error.
function gg.searchAddress(text, mask, type, sign, memoryFrom, memoryTo, limit)
  print(text, mask, type, sign, memoryFrom, memoryTo, limit)
  return true
end

---Refine fuzzy search, with the specified parameters.
---@param difference? string Difference between old and new values. By default is '0'. Must be in English locale. (default: difference = '0')
---@param sign? integer Sign. One of the constants SIGN_FUZZY_*. (default: sign = gg.SIGN_FUZZY_EQUAL)
---@param type? integer Type. One of the constants TYPE_*. (default: type = gg.TYPE_AUTO)
---@param memoryFrom? integer Start memory address for the search. (default: memoryFrom = 0)
---@param memoryTo? integer End memory address for the search. (default: memoryTo = -1)
---@param limit? integer Stopping the search after finding the specified number of results. 0 means to search all results. (default: limit = 0)
---@return boolean | string any true or string with error.
function gg.searchFuzzy(difference, sign, type, memoryFrom, memoryTo, limit)
  print(difference, sign, type, memoryFrom, memoryTo, limit)
  return true
end

---Perform a search for a number, with the specified parameters.
---
---If no results in results list then perform new search, else refine search. So if you need to perform a search, without refine, you must first call clearResults.
---@param text? string String for search. The format same as the format for the search from the GameGuardian UI. But it must be in English locale. (default: text)
---@param type? integer Type. One of the constants TYPE_*. (default: type = gg.TYPE_AUTO)
---@param encrypted? boolean Flag for run search encrypted values. (default: encrypted = false)
---@param sign? integer Sign. One of the constants SIGN_*. (default: sign = gg.SIGN_EQUAL)
---@param memoryFrom? integer Start memory address for the search. (default: memoryFrom = 0)
---@param memoryTo? integer End memory address for the search. (default: memoryTo = -1)
---@param limit? integer Stopping the search after finding the specified number of results. 0 means to search all results. (default: limit = 0)
---@return boolean | string any true or string with error.
function gg.searchNumber(text, type, encrypted, sign, memoryFrom, memoryTo, limit)
  print(text, type, encrypted, sign, memoryFrom, memoryTo, limit)
  return true
end

---Searches for values that may be pointers to elements of the current search result.
---@param maxOffset? integer Maximum offset for pointers. Valid values: 0 - 65535. (default: maxOffset)
---@param memoryFrom? integer Start memory address for the search. (default: memoryFrom = 0)
---@param memoryTo? integer End memory address for the search. (default: memoryTo = -1)
---@param limit? integer Stopping the search after finding the specified number of results. 0 means to search all results. (default: limit = 0)
---@return boolean | string any true or string with error.
function gg.searchPointer(maxOffset, memoryFrom, memoryTo, limit)
  print(maxOffset, memoryFrom, memoryTo, limit)
  return true
end

---Set memory regions to desired bit mask of flags REGION_*.
---@param ranges? integer Bit mask of flags REGION_*. (default: ranges)
---@return nil any
function gg.setRanges(ranges)
  print(ranges)
  return true
end

---Set the speed of the speedhack.
---
---If speedhack was not loaded, then it will be loaded. The call is blocking. The script will wait for speedhack full load.
---@param speed? number Desired speed. Must be in range [1.0E-9; 1.0E9]. (default: speed)
---@return boolean | string any true or string with error.
function gg.setSpeed(speed)
  print(speed)
  return true
end

---Set the values for the list of items.
---@param values? table The table as a list of tables with three keys: address (long), value (string with a value), flags (one of the constants TYPE_*). Values must be in English locale. (default: values)
---@return boolean | string any true or string with error.
function gg.setValues(values)
  print(values)
  return true
end

---Open or close the GameGuardian UI.
---
---If you call this call too often, your script may be interrupted.
---@param visible? boolean true for open GameGuardian UI or false for hide. * (default: visible)
---@return nil any
function gg.setVisible(visible)
  print(visible)
  return true
end

---Shows the UI button.
---
---The UI button has an icon with the letters "Sx" and is visible only when you open the GameGuardian interface. The button is floating, displayed on top of the main GameGuardian interface.

---@return nil any
function gg.showUiButton()
  print()
  return true
end

---Do not restore the state of the GameGuardian, after the script is completed.
---
---For example, by default, a set of memory regions restored after end script execution. This call allow prevent this.

---@return nil any
function gg.skipRestoreState()
  print()
  return true
end

---Causes the currently executing script to sleep (temporarily cease execution) for the specified number of milliseconds, subject to the precision and accuracy of system timers and schedulers.
---@param milliseconds? integer The length of time to sleep in milliseconds. (default: milliseconds)
---@return nil any
function gg.sleep(milliseconds)
  print(milliseconds)
  return true
end

---Start a fuzzy search, with the specified parameters.
---@param type? integer Type. One of the constants TYPE_*. (default: type = gg.TYPE_AUTO)
---@param memoryFrom? integer Start memory address for the search. (default: memoryFrom = 0)
---@param memoryTo? integer End memory address for the search. (default: memoryTo = -1)
---@param limit? integer Stopping the search after finding the specified number of results. 0 means to search all results. (default: limit = 0)
---@return boolean | string any true or string with error.
function gg.startFuzzy(type, memoryFrom, memoryTo, limit)
  print(type, memoryFrom, memoryTo, limit)
  return true
end

---Performs a time jump.
---@param time? string String with time. The format is similar to the time format in the time jump dialog. But it must be in English locale. (default: time)
---@return boolean | string any true or string with error.
function gg.timeJump(time)
  print(time)
  return true
end

---Show the toast.
---
---If the second parameter is true, show the toast for a short period of time.
---
---A toast is a view containing a quick little message for the user.
---
---When the view is shown to the user, appears as a floating view over the application. It will never receive focus. The user will probably be in the middle of typing something else. The idea is to be as unobtrusive as possible, while still showing the user the information you want them to see. Two examples are the volume control, and the brief message saying that your settings have been saved.
---@param text? string The text for toast. (default: text)
---@param fast? boolean Flag for show the toast for a short period of time. (default: fast = false)
---@return nil any
function gg.toast(text, fast)
  print(text, fast)
  return true
end

---Work with Unrandomizer.
---
---If Unrandomizer was not loaded, then it will be loaded. The call is blocking. The script will wait for Unrandomizer full load. You can set any parameter in nil so that it is not used.
---@param qword? integer Qword parameter. Set to nil to disable. (default: qword = nil)
---@param qincr? integer Qword increment. Set to nil to disable. (default: qincr = nil)
---@param double_? number Double parameter. Set to nil to disable. (default: double_ = nil)
---@param dincr? number Double increment. Set to nil to disable. (default: dincr = nil)
---@return boolean | string any true or string with error.
function gg.unrandomizer(qword, qincr, double_, dincr)
  print(qword, qincr, double_, dincr)
  return true
end
