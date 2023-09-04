//
//  virtualization_view.m
//
//  Created by codehex.
//

#import "virtualization_view.h"

@implementation VZApplication

- (void)run
{
    @autoreleasepool {
        [self finishLaunching];

        shouldKeepRunning = YES;
        do {
            NSEvent *event = [self
                nextEventMatchingMask:NSEventMaskAny
                            untilDate:[NSDate distantFuture]
                               inMode:NSDefaultRunLoopMode
                              dequeue:YES];
            // NSLog(@"event: %@", event);
            [self sendEvent:event];
            [self updateWindows];
        } while (shouldKeepRunning);
    }
}

- (void)terminate:(id)sender
{
    shouldKeepRunning = NO;

    // We should call this method if we want to use `applicationWillTerminate` method.
    //
    // [[NSNotificationCenter defaultCenter]
    //     postNotificationName:NSApplicationWillTerminateNotification
    //                   object:NSApp];

    // This method is used to end up the event loop.
    // If no events are coming, the event loop will always be in a waiting state.
    [self postEvent:self.currentEvent atStart:NO];
}
@end