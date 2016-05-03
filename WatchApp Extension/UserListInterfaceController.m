//
//  UserListInterfaceController.m
//  WatchTest
//
//  Created by bianyixuan on 16/4/28.
//  Copyright © 2016年 jzsec-byx. All rights reserved.
//

#import "UserListInterfaceController.h"
#import "MainRowType.h"
@interface UserListInterfaceController ()

@property (nonatomic , strong) NSMutableArray *dataArray;


@end

@implementation UserListInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    self.dataArray=[NSMutableArray array];
    for (int i=0; i<10;i++) {
        NSString *str=[NSString stringWithFormat:@"test%d",i];
        [self.dataArray addObject:str];
    }
    
    [self configureTableWithData:self.dataArray];
    // Configure interface objects here.
}


- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


-(void)configureTableWithData:(NSMutableArray *)dataObjects{
    
    [self.tableView setNumberOfRows:[dataObjects count] withRowType:@"MainRowType"];
    for (NSInteger i=0; i<self.tableView.numberOfRows; i++) {
        MainRowType* theRow=(MainRowType *)[self.tableView rowControllerAtIndex:i];
        NSString *str=[self.dataArray objectAtIndex:i];
        [theRow.rowDescription setText:str];
        
        [theRow.rowIcon setImage:[UIImage imageNamed:@"icon"]];
    }
}

-(void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex
{
    NSString *str=[self.dataArray objectAtIndex:rowIndex];
    
    WKAlertAction *action=[WKAlertAction actionWithTitle:@"cancel" style:WKAlertActionStyleCancel handler:^{
        [self dismissController];
    }];
    WKAlertAction *actionPhoto=[WKAlertAction actionWithTitle:@"photo" style:WKAlertActionStyleCancel handler:^{
        
    }];
    [self presentAlertControllerWithTitle:@"watch title" message:str preferredStyle:WKAlertControllerStyleActionSheet actions:@[action,actionPhoto]];
}



@end



