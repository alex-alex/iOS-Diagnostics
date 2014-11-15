//
//  ELLProcessTimeBreakdownModel.m
//  iOS Diagnostics
//
//  Created by Christopher Anderson on 09/11/2014.
//  Copyright (c) 2014 Electric Labs. All rights reserved.
//

#import "ELLProcessTimeBreakdownModel.h"
#import "ELLReportSectionModel+Internal.h"
#import "ELLSqlPowerLogAnalyser.h"


@interface ELLProcessTimeBreakdownModel ()
@end

@implementation ELLProcessTimeBreakdownModel

- (void)load {
    [self.logAnalyser processProcessTimeBreakdownFrom:self.startDate toDate:self.endDate completion:^(NSArray *processTimeBreakdown, NSError *error) {
        self.results = processTimeBreakdown;
        self.readyToReport = YES;
    }];
}

@end
