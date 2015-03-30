//
//  ViewController.m
//  PopulaParse
//
//  Created by Conrado Werlang on 3/30/15.
//  Copyright (c) 2015 Infinity Team. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _alternativas = [[NSMutableArray alloc]init];
    

    //================================================================
    
    //NUMERO DA QUESTAO-----
    NSNumber* numeroDaQuestao = @1;
    
    //ENUNCIADO-----
    NSString* enunciado = @"ENUNCIADO ";
    
    //ANO-----
    NSNumber* ano = @2011;
    
    //DISCIPLINA-----
    NSString* disciplina = @"DISCIPLINA";
    
    
    //ALTERNATIVAS------
    _alternativas = [NSMutableArray arrayWithObjects:/*A*/@" ", /*B*/@" ", /*C*/@" ", /*D*/@" ", /*E*/@" ", nil];
    
    //RESPOSTA CERTA-----
    //A = 0; B = 1; C = 2; D = 3; E = 4;
    
    NSNumber* respostaCerta = @2;
    
    
    //==================================================================
    
    _questao = [[Questao alloc]init];
    [_questao adicionaQuestao:numeroDaQuestao paraEnunciado:enunciado comAno:ano comDisciplina:disciplina comResposta:respostaCerta comAlternativas:_alternativas comImagem:nil];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
