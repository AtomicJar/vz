//
//  virtualization_view.h
//
//  Created by codehex.
//

#pragma once

#import <Availability.h>
#import <Cocoa/Cocoa.h>
#import <Virtualization/Virtualization.h>

@interface VZApplication : NSApplication {
    bool shouldKeepRunning;
}
@end