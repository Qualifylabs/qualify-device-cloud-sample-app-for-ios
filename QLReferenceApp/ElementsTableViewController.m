#import "ElementsTableViewController.h"
#import "UIColor+ColorExtension.h"

@interface ElementsTableViewController ()

@end
static NSString* const CELL_IDENTIFIER = @"elementTableCell";
static NSUInteger const NUMBER_OF_CELLS = 40;
static NSUInteger const NUMBER_OF_SECTIONS = 1;

/**
 *  A table list view controller
 */
@implementation ElementsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor flatDarkOffWhite];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CELL_IDENTIFIER];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return NUMBER_OF_SECTIONS;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return NUMBER_OF_CELLS;
}

/**
 *  Creates the cells and sets the text
 *
 *  The text is just the index
 *
 *  @param tableView <#tableView description#>
 *  @param indexPath <#indexPath description#>
 *
 *  @return <#return value description#>
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%li",(long)indexPath.row];
    return cell;
}

@end
