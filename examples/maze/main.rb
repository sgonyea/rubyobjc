# Set the application search path
ObjC.set_path :INTERNAL

# Activate any optional components
ObjC.require :Foundation
ObjC.require :AppKit
ObjC.require :menu
ObjC.strict = true

ObjC.load_internal_files(__FILE__)

class ApplicationDelegate < ObjC::NSObject
  imethod "applicationDidFinishLaunching:" do |sender| 
    make_menu "The Maze Game"
    $m = maze(50,50)
  end
end

$delegate = ApplicationDelegate.alloc.init
ObjC::NSApplication.sharedApplication.setDelegate_($delegate)
ObjC::NSApplication.sharedApplication.activateIgnoringOtherApps_(true)
ObjC.NSApplicationMain(0, nil)
