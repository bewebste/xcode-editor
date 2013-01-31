//
//  XcodeSourceTreeType.h
//  xcode-editor
//
//  Created by Brian Webster on 1/31/13.
//  Copyright (c) 2013 EXPANZ. All rights reserved.
//

#import <Foundation/Foundation.h>

//Specifies a group or source file's reference type, e.g. whether it's located relative to
//its parent group, the project, etc.

typedef enum {
	XcodeSourceTreeUnknown = 0,
	XcodeSourceTreeAbsolutePath,
	XcodeSourceTreeRelativeToGroup,
	XcodeSourceTreeRelativeToProject,
	XcodeSourceTreeRelativeToDeveloperDirectory,
	XcodeSourceTreeRelativeToBuildProducts,
	XcodeSourceTreeRelativeToSDK
} XcodeSourceTreeType;

@interface NSString(XcodeSourceTreeType)

+ (NSString*)stringFromSourceTreeType:(XcodeSourceTreeType)type;

- (XcodeSourceTreeType)asSourceTreeType;

@end
