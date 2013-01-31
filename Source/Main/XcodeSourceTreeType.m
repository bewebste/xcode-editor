//
//  XcodeSourceTreeType.m
//  xcode-editor
//
//  Created by Brian Webster on 1/31/13.
//  Copyright (c) 2013 EXPANZ. All rights reserved.
//

#import "XcodeSourceTreeType.h"
#import "Utils/XCEnumUtils.h"

@implementation NSString(XcodeSourceTreeType)

static NSDictionary* sourceTreeStringToTypeMap = nil;

+ (void)initialize
{
	if (sourceTreeStringToTypeMap == nil)
	{
		sourceTreeStringToTypeMap = [NSDictionary dictionaryWithObjectsAndKeys:
									 boxEnum(XcodeSourceTreeAbsolutePath), @"<absolute>",
									 boxEnum(XcodeSourceTreeRelativeToGroup), @"<group>",
									 boxEnum(XcodeSourceTreeRelativeToProject), @"SOURCE_ROOT",
									 boxEnum(XcodeSourceTreeRelativeToDeveloperDirectory), @"DEVELOPER_DIR",
									 boxEnum(XcodeSourceTreeRelativeToBuildProducts), @"BUILT_PRODUCTS_DIR",
									 boxEnum(XcodeSourceTreeRelativeToSDK), @"SDKROOT",
									 nil];
	}
}

+ (NSString*)stringFromSourceTreeType:(XcodeSourceTreeType)type
{
    return [[sourceTreeStringToTypeMap allKeysForObject:boxEnum(type)] lastObject];
}

- (XcodeSourceTreeType)asSourceTreeType
{
	return [[sourceTreeStringToTypeMap objectForKey:self] intValue];
}

@end
