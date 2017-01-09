This is an example project built to model complicated iOS app project structure. It consists of the main project and 3 sub-projects. 

* MainProject - builds a simple Tab-based app. It contains and imports 3 other projects. The project also imports AFNetworking framework and Reachability static library
* ProjectA - static library and resource bundle providing a view controller in Objective-C. 
* ProjectB - dynamic framework providing a view controller. This project imports ProjectC.
* ProjectC - dynamic framework providing a view controller and ModelMapper, that imports ObjectMapper framework.

All source code for third-party dependencies live inside `ThirdParty` folder. That directory also has some convenience scripts:

* Download.sh - downloads third-party source code from git repositories which specified in Repositories.csv (format: `RepositoryName,GitCloneURL,TagOrBranchOrRevision` )
* ConvertToLib.sh - takes path to a ".framework" bundle containing fake (static) framework, and splits it into libraries for Simulator and device. It places libraries and header files inside `iphoneos` and `iphonesimulator` directories.
* `CopyLibraries.sh` - takes path to a build products directory (Build/Products) of a library project and copies library and headers into project's Libraries folder. Requires library project to have built library for Release configuration, for both Simulator and device (select any simulator, then Cmd + Shift + I; select "Generic iOS Device", then Cmd + Shift + I).
* `CopyFrameworks.sh` - same as CopyLibraries.sh but for frameworks. Takes path to build products directory and copies all contents of Release configurations to Frameworks folder in project.

Third-party libraries are placed into `Libraries/${PLATFORM_NAME}/` directory, with include files placed inside `Libraries/${PLATFORM_NAME}/include/LibraryName`. 

Third-party frameworks and dSYMs are put inside `Frameworks/${PLATFORM_NAME}` directory.

`MainProject` uses `ThirdPartyConfig.xcconfig` file to set proper Xcode build settings for importing frameworks and libraries. The project also uses `EmbedFrameworksScript.sh` to copy frameworks into app bundle. The same approach for configuration files is used inside `ProjectC` which uses ObjectMapper framework.
