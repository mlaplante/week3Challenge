//
//  LPMovie.h
//  week3Challenge
//
//  Created by Michael La Plante on 9/7/13.
//  Copyright (c) 2013 Michael La Plante. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "LPDirector.h"

//@class LPGenre;
//@class LPDirector;

@interface LPMovie : NSObject

//@property (nonatomic,strong) LPDirector* director;

@property (nonatomic, strong) NSString* title;
@property (nonatomic,strong) NSArray* genres;
@property (nonatomic, strong) NSArray* directors;



@end
