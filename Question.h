//
//  Question.h
//  Questionaire
//
//  Created by Earl Vik on 27.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
@property (nonatomic,strong) NSString* testName;

@property (nonatomic) int questionNumber;

@property (nonatomic, strong) UIImage* picRelated;

@property (nonatomic,strong) NSString* questionText;

@property (nonatomic) int questionType;//1 for input answer, 2 for multiple choice, 3 for checkbox

@property (nonatomic) int numOfAnswers;

@property (nonatomic,strong) NSString* strInputAnswer;

@property (nonatomic,strong) NSString* strRightAnswer;

@property (nonatomic,strong) NSArray* answers;











-(void)initWithAnswers:(int)value;

-(bool)isRight:(NSString*)value;



@end
