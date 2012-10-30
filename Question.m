//
//  Question.m
//  Questionaire
//
//  Created by Earl Vik on 27.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Question.h"

@implementation Question

@synthesize testName;

@synthesize picRelated;

@synthesize questionNumber;

@synthesize questionText;

@synthesize questionType;

@synthesize strInputAnswer;

@synthesize strRightAnswer;

@synthesize numOfAnswers;

@synthesize answers;


-(bool)isRight:(NSString *)value{

    self.strInputAnswer=value;
    
  if ([self.strInputAnswer isEqualToString:self.strRightAnswer]) return YES;
        
	else return NO;
        

}


-(void)initWithAnswers:(int)value 
{
    
[self setQuestionType:value];

    switch (self.questionType) {
  
      case 1:{
           
 [self setQuestionText:@"What is the color of leaves in summer"];
  
          [self setNumOfAnswers:-1];
  
          self.strRightAnswer=@"green";
         
   
            }
          
  break;
    
        
	case 2:{
           
 	self.questionText=@"what is the color of leaves in summer";
 
           NSArray* ar=[[NSArray alloc] initWithObjects:@"red",@"blue",@"green", nil];

            [self setAnswers:ar];
           
 	self.numOfAnswers=3;
         
   self.strRightAnswer=@"2";
        

        
        }
            
      
      break;
        
	case 3: {
  
          self.questionText=@"what can be the color of leaves in autumn";
   
         NSArray* ar=[[NSArray alloc] initWithObjects:@"orange",@"violet",@"red",@"pink",@"blue" nil];
         
	   self.answers=ar;
          
	  self.numOfAnswers=5;
      
	      self.strRightAnswer=@"5";//right answers are N0&N2 so strRightAnswer equals 2^0+2^2
      
      
        }
        
    break;
        
   
 }
    
}

@end
