//
//  ViewController.h
//  HtmlContentTest
//
//  Created by Diogo Carneiro on 03/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong,nonatomic) IBOutlet UIWebView *navegador;
@property (strong,nonatomic) IBOutlet UILabel *resposta;
@property (strong,nonatomic) IBOutlet UIView *respostaView;

- (IBAction) mostraConteudo;
- (IBAction) atualizaPagina:(NSString *)pagina;
- (IBAction) escondeResposta;
- (IBAction) mostraResposta:(NSString *)str;

@end
