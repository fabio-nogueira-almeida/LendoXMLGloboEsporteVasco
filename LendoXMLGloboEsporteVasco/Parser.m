//
//  Parser.m
//  LendoXMLGloboEsporteVasco
//
//  Created by Fábio Nogueira  on 30/01/13.
//  Copyright (c) 2013 Fábio Nogueira . All rights reserved.
//

#import "Parser.h"

@implementation Parser

@synthesize NoticesOfVasco, notice;

// Inicializando o Parser lendo o XML do site
-init {
  if(self == [super init]) {
    parser = [[NSXMLParser alloc]
              initWithContentsOfURL:[NSURL URLWithString:@"http://globoesporte.globo.com/dynamo/futebol/times/vasco/rss2.xml"]];
    [parser setDelegate:self];
    [parser parse];
  }      
  return self;
}


#pragma mark - XML Delegate

// metodo chamado quando o está começando a ler o elemento <> do XML/
- (void)parser:(NSXMLParser *)parser didStartElement: (NSString *)elementName
                                        namespaceURI:(NSString *)namespaceURI
                                       qualifiedName:(NSString *)qualifiedName
                                          attributes:(NSDictionary *)attributeDict {
  
  NSLog(@"Elemendo: %@", elementName);
  element = [NSMutableString string];
}

// usado para pegar tudo que está entre o elemento inicial <> e o final </>
// Melhor dizendo, ele é usado para pegar o conteúdo das tag
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {

  if(element == nil)
    
    element = [[NSMutableString alloc] init];
  
    [element appendString:string];
}

// metodo chamado quando está acabando de ler o elemento </> do XML
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName {
  
  NSLog(@"Nome do elemento: %@ / valor: %@", elementName, element);
  
  if ([elementName isEqualToString:@"title"]) {
    notice.title = element;
  }
  if ([elementName isEqualToString:@"link"]) {
    notice.link = element;
  }
  if ([elementName isEqualToString:@"description"]) {
    notice.description = element;
  }
  if ([elementName isEqualToString:@"category"]) {
    notice.category = element;
  }
  if ([elementName isEqualToString:@"pubDate"]) {
    notice.date = element;
  }
  
//  NSLog(@"Objeto Vasco: Imprimindo %@", notice);
  
  
}

@end
