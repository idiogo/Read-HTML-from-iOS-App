//
//  ViewController.m
//  HtmlContentTest
//
//  Created by Diogo Carneiro on 03/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize navegador, resposta, respostaView;

- (IBAction) mostraConteudo{
    [self escondeResposta];
    NSString *html = [navegador stringByEvaluatingJavaScriptFromString: @"document.getElementById('content').value"];
    [self mostraResposta:html];
}

- (IBAction) atualizaPagina:(NSString *)pagina{
    [self escondeResposta];
    NSString *urlAddress = pagina;
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [navegador loadRequest:requestObj];
}

- (IBAction)abrePagina:(id)sender{
    UIBarItem *botao = (UIBarItem *)sender;
    if([botao tag]==1){
        [self atualizaPagina:@"http://apps.globalb2c.net/mobuy/app/views/iphone/teste.php"];
    }else if([botao tag]==2){
        [self atualizaPagina:@"http://apps.globalb2c.net/mobuy/app/views/iphone/cinema.php"];
    }
}

- (IBAction) escondeResposta{
    respostaView.hidden = YES;
    resposta.text = @"";
}

- (IBAction) mostraResposta:(NSString *)str{
    resposta.text = str;
    respostaView.hidden = NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self atualizaPagina:@"http://192.168.10.199/mobuy/app/views/iphone/teste.php"];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
