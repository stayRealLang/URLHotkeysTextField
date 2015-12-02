

#import "URLTextView.h"

@implementation URLTextView

- (id)initWithCoder:(NSCoder *)aDecoder{
    self=[super initWithCoder:aDecoder];
    if(self){
        UIView*aView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 40)];
        aView.backgroundColor=SECTIONCOLOR;
        
        UIButton *httpButton = [[UIButton alloc]initWithFrame:CGRectMake(10, 0, (SCREEN_WIDTH-40)/4, 40)];
        [httpButton setTitle:@"http://" forState:UIControlStateNormal];
        [httpButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [httpButton addTarget:self action:@selector(addHttp) forControlEvents:UIControlEventTouchUpInside];
        [aView addSubview:httpButton];
        
        UIButton *wwwButton = [[UIButton alloc]initWithFrame:CGRectMake(20+(SCREEN_WIDTH-40)/4, 0, (SCREEN_WIDTH-40)/3, 40)];
        [wwwButton setTitle:@"www." forState:UIControlStateNormal];
        [wwwButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [wwwButton addTarget:self action:@selector(addwww) forControlEvents:UIControlEventTouchUpInside];
        [aView addSubview:wwwButton];
        
        UIButton *comButton = [[UIButton alloc]initWithFrame:CGRectMake(30+2*(SCREEN_WIDTH-40)/4, 0, (SCREEN_WIDTH-40)/3, 40)];
        [comButton setTitle:@".com" forState:UIControlStateNormal];
        [comButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [comButton addTarget:self action:@selector(addcom) forControlEvents:UIControlEventTouchUpInside];
        [aView addSubview:comButton];
        
        UIButton *cnButton = [[UIButton alloc]initWithFrame:CGRectMake(40+3*(SCREEN_WIDTH-40)/4, 0, (SCREEN_WIDTH-40)/3, 40)];
        [cnButton setTitle:@".cn" forState:UIControlStateNormal];
        [cnButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [cnButton addTarget:self action:@selector(addcn) forControlEvents:UIControlEventTouchUpInside];
        [aView addSubview:cnButton];
        
        self.inputAccessoryView=aView;
        
    }
    return self;
    
}
-(id)init{
    self=[super init];
    if(self){
        UIView*aView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50)];
        aView.backgroundColor=SECTIONCOLOR;
        
        UIButton *httpButton = [[UIButton alloc]initWithFrame:CGRectMake(10, 5, (SCREEN_WIDTH-40)/4, 40)];
        [httpButton setTitle:@"http://" forState:UIControlStateNormal];
        [httpButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [httpButton addTarget:self action:@selector(addHttp) forControlEvents:UIControlEventTouchUpInside];
        [aView addSubview:httpButton];
        
        UIButton *wwwButton = [[UIButton alloc]initWithFrame:CGRectMake(20+(SCREEN_WIDTH-40)/4, 5, (SCREEN_WIDTH-40)/3, 40)];
        [wwwButton setTitle:@"www." forState:UIControlStateNormal];
        [wwwButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [wwwButton addTarget:self action:@selector(addwww) forControlEvents:UIControlEventTouchUpInside];
        [aView addSubview:wwwButton];
        
        UIButton *comButton = [[UIButton alloc]initWithFrame:CGRectMake(30+2*(SCREEN_WIDTH-40)/4, 5, (SCREEN_WIDTH-40)/3, 40)];
        [comButton setTitle:@".com" forState:UIControlStateNormal];
        [comButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [comButton addTarget:self action:@selector(addcom) forControlEvents:UIControlEventTouchUpInside];
        [aView addSubview:comButton];
        
        UIButton *cnButton = [[UIButton alloc]initWithFrame:CGRectMake(40+3*(SCREEN_WIDTH-40)/4, 5, (SCREEN_WIDTH-40)/3, 40)];
        [cnButton setTitle:@".cn" forState:UIControlStateNormal];
        [cnButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [cnButton addTarget:self action:@selector(addcn) forControlEvents:UIControlEventTouchUpInside];
        [aView addSubview:cnButton];
        
        self.inputAccessoryView=aView;
        
    }
    return self;
}




- (void)addHttp{
    self.text = @"http://";
}
- (void)addwww{
    self.text = [self.text stringByAppendingString:@"www."];
}
- (void)addcom{
    self.text = [self.text stringByAppendingString:@".com"];
}
- (void)addcn{
    self.text = [self.text stringByAppendingString:@".cn"];
}

@end
