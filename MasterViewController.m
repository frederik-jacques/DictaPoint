//
//  MasterViewController.m
//  DictaPoint
//
//  Created by Frederik Jacques on 20/03/13.
//  Copyright (c) 2013 thenerd. All rights reserved.
//

#import "MasterViewController.h"
#import "Student.h"
#include "LibXL/libxl.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

@synthesize urlToLoad = _urlToLoad;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Initialization code here.
        self.students = [NSMutableArray array];
    }
    
    return self;
}

- (void)setUrlToLoad:(NSURL *)urlToLoad {
    NSLog(@"[MasterVC] Setting file to load");
    _urlToLoad = urlToLoad;
    
    [self parseFile];
}

- (void)parseFile {
    NSLog(@"[MasterVC] Parsing file");
    
    CHCSVParser *parser = [[CHCSVParser alloc] initWithContentsOfCSVFile:[self.urlToLoad path]];
    [parser setDelegate:self];
    [parser parse];
    
    self.speech = [[NSSpeechRecognizer alloc] init];
    [self.speech setCommands:@[@"One",@"Two",@"Three",@"Four",@"Five",@"Six", @"Seven",@"Eight",@"Nine",@"Ten",@"Eleven",@"Twelve",@"Thirteen",@"Fourteen",@"Fifteen",@"Sixteen",@"Seventeen",@"Eighteen",@"Nineteen",@"Twenty", @"Next", @"Previous", @"Export"]];
    self.speech.delegate = self;
    [self.speech setBlocksOtherRecognizers:YES];
    [self.speech startListening];
}

- (void)parser:(CHCSVParser *)parser didReadField:(NSString *)field atIndex:(NSInteger)fieldIndex {
    Student *student = [[Student alloc] initWithName:field];
    [self.students addObject:student];
}

- (void)parserDidEndDocument:(CHCSVParser *)parser {
    NSLog(@"[MasterVC] Did end reading document");
    [self.tableView reloadData];
}

- (void)speechRecognizer:(NSSpeechRecognizer *)sender didRecognizeCommand:(id)command {
    NSLog(@"Detected speech %@", command);
    
    NSString *c = (NSString *)command;
    
    NSUInteger currentIndex = self.tableView.selectedRow;
    NSIndexSet *indexSet = nil;
    
    if( [c isEqualToString:@"Next"] ){
        currentIndex++;
        indexSet = [NSIndexSet indexSetWithIndex:currentIndex];
        [self.tableView selectRowIndexes:indexSet byExtendingSelection:NO];
    }
    
    if( [c isEqualToString:@"Previous"] ){
        currentIndex--;
        indexSet = [NSIndexSet indexSetWithIndex:currentIndex];
        [self.tableView selectRowIndexes:indexSet byExtendingSelection:NO];

    }
    
    NSLog(@"[MasterVC] Current index now %li", (unsigned long)currentIndex);

    BOOL gotoNext = NO;
    
    if( [c isEqualToString:@"One"] ){
        NSLog(@"Updating point of student");
        
        gotoNext = YES;
        [self updateStudentPointWithIndex:currentIndex andPoint:1];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Two"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;
        [self updateStudentPointWithIndex:currentIndex andPoint:2];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Three"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:3];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Four"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:4];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Five"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:5];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Six"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:6];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Seven"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:7];
        [self.tableView reloadData];
    }
    if( [c isEqualToString:@"Eight"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:8];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Nine"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:9];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Ten"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:10];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Eleven"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:11];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Twelve"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;
        [self updateStudentPointWithIndex:currentIndex andPoint:12];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Thirteen"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:13];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Fourteen"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:14];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Fifteen"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:15];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Sixteen"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:16];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Seventeen"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:17];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Eighteen"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:18];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Nineteen"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:19];
        [self.tableView reloadData];
    }
    
    if( [c isEqualToString:@"Twenty"] ){
        NSLog(@"Updating point of student");
        gotoNext = YES;        
        [self updateStudentPointWithIndex:currentIndex andPoint:20];
        [self.tableView reloadData];
    }    

    if( gotoNext ){
        indexSet = [NSIndexSet indexSetWithIndex:(currentIndex+1)];
    }
    
    if( [c isEqualToString:@"Export"] ){
        NSLog(@"Updating point of student");
        [self export:nil];
    }

    [self.tableView selectRowIndexes:indexSet byExtendingSelection:NO];
}

- (void)updateStudentPointWithIndex:(NSUInteger)index andPoint:(int)point {
        NSLog(@"Updating point of student");
        Student *student = [self.students objectAtIndex:index];
        student.point = point;
        
        [self.students replaceObjectAtIndex:index withObject:student];
        
        [self.tableView reloadData];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    
    if( [tableColumn.identifier isEqualToString:@"studentNameColumn"] ) {
        Student *student = [self.students objectAtIndex:row];
        cellView.textField.stringValue = student.name;    
    }
    
    if( [tableColumn.identifier isEqualToString:@"puntenColumn"] ){
        Student *student = [self.students objectAtIndex:row];
        cellView.textField.stringValue = [NSString stringWithFormat:@"%i", student.point];
    }
    
    return cellView;
}


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [self.students count];
}

- (IBAction)export:(id)sender {
    
    BOOL xlsMode = 1;
    
    FontHandle boldFont;
    FontHandle titleFont;
    FormatHandle titleFormat;
    FormatHandle naamFormat;
    SheetHandle sheet;
    BookHandle book;
    
    book = xlsMode ? xlCreateBook() : xlCreateXMLBook();
    
    boldFont = xlBookAddFont(book, 0);
    xlFontSetBold(boldFont, 1);
    
    titleFont = xlBookAddFont(book, 0);
    xlFontSetName(titleFont, "Arial Black");
    xlFontSetSize(titleFont, 16);
    
    titleFormat = xlBookAddFormat(book, 0);
    xlFormatSetFont(titleFormat, titleFont);
    
    naamFormat = xlBookAddFormat(book, 0);
    xlFormatSetBorderTop(naamFormat, BORDERSTYLE_THIN);
    xlFormatSetBorderRight(naamFormat, BORDERSTYLE_THIN);
    xlFormatSetAlignVA(naamFormat, ALIGNV_CENTER);
    
    xlFormatSetAlignH(naamFormat, ALIGNH_LEFT);
    xlFormatSetFont(naamFormat, boldFont);
    
    sheet = xlBookAddSheet(book, "Punten studenten", 0);
    
    if(sheet) {
        xlSheetWriteStr(sheet, 1, 0, "Naam", titleFormat);
        xlSheetWriteStr(sheet, 1, 1, "Punten", titleFormat);
        
        
        
        int startRow = 3;
        
        for (Student *student in self.students) {
            xlSheetSetRowA(sheet, startRow, 20, 0, false);
            xlSheetWriteStr(sheet, startRow, 0, [student.name UTF8String], naamFormat);
            xlSheetWriteStr(sheet, startRow, 1, [[NSString stringWithFormat:@"%i", student.point] UTF8String], naamFormat);
            
            startRow++;
        }
        
        xlSheetSetCol(sheet, 1, 1, 50, 0, 0);
        xlSheetSetCol(sheet, 0, 0, 50, 0, 0);

    }
    
    NSString *name = xlsMode ? @"punten.xls" : @"punten.xlsx";
    NSString *documentPath =
    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES) objectAtIndex:0];
    NSString *filename = [documentPath stringByAppendingPathComponent:name];
    
    xlBookSave(book, [filename UTF8String]);
    
    xlBookRelease(book);
    
    [[NSWorkspace sharedWorkspace] openFile:filename];
    
}
@end
