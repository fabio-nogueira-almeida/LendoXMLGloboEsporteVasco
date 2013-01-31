//
//  Vasco.h
//  LendoXMLGloboEsporteVasco
//
//  Created by Fábio Nogueira  on 30/01/13.
//  Copyright (c) 2013 Fábio Nogueira . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vasco : NSObject {
  
  NSString *title;
  NSString *link;
  NSString *description;
  NSString *category;
  NSString *date;
}

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *link;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *category;
@property (nonatomic, strong) NSString *date;

@end
