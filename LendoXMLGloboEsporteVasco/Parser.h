//
//  Parser.h
//  LendoXMLGloboEsporteVasco
//
//  Created by Fábio Nogueira  on 30/01/13.
//  Copyright (c) 2013 Fábio Nogueira . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vasco.h"

@interface Parser : NSObject <NSXMLParserDelegate> {

  NSXMLParser *parser;
  NSMutableString *element;
  Vasco *notice;
  NSMutableDictionary *NoticesOfVasco;
}

@property (nonatomic, strong) NSMutableDictionary *NoticesOfVasco;
@property (nonatomic, strong) Vasco *notice;

@end
