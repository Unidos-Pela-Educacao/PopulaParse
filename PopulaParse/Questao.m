//
//  Questao.m
//  Passe na UFRGS
//
//  Created by Conrado Werlang on 3/23/15.
//  Copyright (c) 2015 Infinity Team. All rights reserved.
//

#import "Questao.h"
#import <Parse/Parse.h>

@implementation Questao




-(void)adicionaQuestao:(NSNumber*)numero
         paraEnunciado:(NSString*)enunciado
                comAno:(NSNumber*)ano
         comDisciplina:(NSString*)disciplina
           comResposta:(NSNumber*)respostaCerta
       comAlternativas:(NSMutableArray*)alternativas
             comImagem:(PFFile*)image{
    
//    UIImage *image = [UIImage imageNamed:@"image"];
//    
//    NSData *imageData = UIImagePNGRepresentation(image);
//    PFFile *imageFile = [PFFile fileWithName:@"image.png" data:imageData];
    
    PFObject *questao = [[PFObject alloc] initWithClassName: @"Questao"];
    questao[@"ano"] = ano;
    questao[@"enunciado"] = enunciado;
    questao[@"disciplina"] = disciplina;
    questao[@"respostaCerta"] = respostaCerta;
    questao[@"numero"] = numero;
    if(image != nil)questao[@"imagem"] = image;
    questao[@"alternativas"] = alternativas;
    [questao saveInBackground];
   
}

@end
