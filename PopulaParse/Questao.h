//
//  Questao.h
//  Passe na UFRGS
//
//  Created by Conrado Werlang on 3/23/15.
//  Copyright (c) 2015 Infinity Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface Questao : NSObject

@property (nonatomic) NSNumber* numero;
@property (nonatomic, strong) NSString* enunciado;
@property (nonatomic, strong) NSArray* alternativas;
@property (nonatomic, strong) NSString* imagem;
@property (nonatomic) NSNumber* respostaCerta;
@property (nonatomic) NSNumber* ano;

@property (nonatomic) NSNumber* escolhida;

@property (nonatomic) BOOL acertou;

-(void)adicionaQuestao:(NSNumber*)numero
         paraEnunciado:(NSString*)enunciado
                comAno:(NSNumber*)ano
         comDisciplina:(NSString*)disciplina
           comResposta:(NSNumber*)respostaCerta
       comAlternativas:(NSMutableArray*)alternativas
             comImagem:(PFFile*)image;

@end
