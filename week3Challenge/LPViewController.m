//
//  LPViewController.m
//  week3Challenge
//
//  Created by Michael La Plante on 9/7/13.
//  Copyright (c) 2013 Michael La Plante. All rights reserved.
//

#import "LPViewController.h"
#import "LPMovie.h"
#import "LPGenre.h"

@interface LPViewController ()

@end

@implementation LPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Plist Snippet
    NSString *thePath = [[NSBundle mainBundle] pathForResource:@"movies" ofType:@"plist"];
    NSDictionary* movies = [[NSDictionary alloc] initWithContentsOfFile:thePath];
    
    NSArray* arrMovies = [[NSArray alloc] initWithArray:[movies valueForKey:@"movie"]];
    NSMutableArray* arrMovieData = [[NSMutableArray alloc] init];
    
    //NSLog(@"%@",arrMovies);
    
    for (int i =0; i < [arrMovies count]; i++)
    {
        NSString* strGenres = [[arrMovies objectAtIndex:i] valueForKey:@"genres"];
        NSArray* genres = [strGenres componentsSeparatedByString:@","];
        NSMutableArray* arrGenres = [[NSMutableArray alloc]init];
        
        LPMovie* movie = [[LPMovie alloc] init];
        movie.title = [[arrMovies objectAtIndex:i] valueForKey:@"title"];
        //movie.genres = genres;
        
        for (int j =0; j < [genres count];j++) {
            LPGenre* genre = [[LPGenre alloc] init];
            genre.genre = [genres objectAtIndex:j];
            
            [arrGenres addObject:genre];
            NSLog(@"%@", [genres objectAtIndex:j]);
        }
        
        movie.genres = arrGenres;
        [arrMovieData addObject:movie];
       
    }
    NSLog(@"%@", [[arrMovieData objectAtIndex:0] title]);
     NSLog(@"%@", [[arrMovieData objectAtIndex:0] genres]);
     //NSLog(@"%@", [arrMovies objectAtIndex:i]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
