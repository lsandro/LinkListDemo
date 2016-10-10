//
//  main.m
//  LinkListDemo
//
//  Created by YI on 16/10/10.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OCLinkList : NSObject {
    id data;
    OCLinkList *head;
    OCLinkList *next;
    OCLinkList *next1;//
}
@end

@implementation OCLinkList
- (void)createLinkList {
    head = [[OCLinkList alloc] init];
    head->next = nil;
    OCLinkList *ptr = head;
    for (int i=1; i<=20; i++){
        OCLinkList *node = [[OCLinkList alloc] init];
        node->data = [NSNumber numberWithInt:i];
        node->next = nil;
        ptr->next = node;
        ptr = node;
    }
}
- (void)outputLinkList {
    OCLinkList *ptr = head->next;
    while (ptr != nil) {
        //NSLog(@"%d",[ptr->data intValue]);
        printf("%d ", [ptr->data intValue]);
        ptr = ptr->next;
    }
    printf("\n");
}
#pragma mark -  单链表逆排序
- (void)reversLinkList{
    OCLinkList *ptr = head->next;

    OCLinkList *head1 = [[OCLinkList alloc] init];
    head1->next1 = nil;
    while (ptr != nil) {
        OCLinkList *node = [[OCLinkList alloc] init];
        node = ptr;
        node->next1 = head1->next1;
        head1->next1 = node;
        ptr = ptr->next;
        NSLog(@"%@---%@---",next,next1);
    }
    
    OCLinkList *ptr1 = head1->next1;
    while (ptr1 != nil) {
        printf("%d ", [ptr1->data intValue]);
        ptr1 = ptr1->next1;
    }
    printf("\n");
 
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        OCLinkList *list = [[OCLinkList alloc] init];
        [list createLinkList];
        [list outputLinkList];
        [list reversLinkList];
    }
    return 0;
}
