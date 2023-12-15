.model small
.stack 1000H
.data 
;-- Logos e Constantes e Variaveis -------------------------------------------------------------------------------------
 
logo            db "              _                 _     _ "
                db "    /\       | |               (_)   | |"
                db "   /  \   ___| |_ ___ _ __ ___  _  __| |"
                db "  / /\ \ / __| __/ _ \  __/ _ \| |/ _` |"
                db " / ____ \\__ \ ||  __/ | | (_) | | (_| |"
                db "/_/    \_\___/\__\___|_|  \___/|_|\__,_|"
                db "        \ \        / /                  "
                db "         \ \  /\  / /_ _ _   _          "
                db "          \ \/  \/ / _` | | | |         "
                db "           \  /\  / (_| | |_| |         "
                db "            \/  \/ \__,_|\__, |         "
                db "                          __/ |         "
                db "                         |___/          "
     
    botao_jogar db "  Jogar  "
    botao_sair  db "  Sair   "
    botao_jogar_selecionado db "[ Jogar ]"
    botao_sair_selecionado  db "[ Sair  ]"
    
logo_perdeu     db " __      __                           "
                db " \ \    / /                           "
                db "  \ \  / /__   ___ ___                "
                db "   \ \/ / _ \ / __/ _ \               "
                db "    \  / (_) | (_|  __/               "
                db "  ___\/ \___/ \___\___|               "
                db " |  __ \           | |                "
                db " | |__) |__ _ __ __| | ___ _   _      "
                db " |  ___/ _ \ '__/ _` |/ _ \ | | |     "
                db " | |  |  __/ | | (_| |  __/ |_| |     "
                db " |_|   \___|_|  \__,_|\___|\__,_|     "
                                 

logo_venceu     db " __      __                           "
                db " \ \    / /                           "
                db "  \ \  / /__   ___ ___                "
                db "   \ \/ / _ \ / __/ _ \               "
                db "    \  / (_) | (_|  __/               "
                db " __  \/ \___/ \___\___|               "
                db " \ \    / /                           " 
                db "  \ \  / /__ _ __   ___ ___ _   _     "
                db "   \ \/ / _ \ '_ \ / __/ _ \ | | |    "
                db "    \  /  __/ | | | (_|  __/ |_| |    "
                db "     \/ \___|_| |_|\___\___|\__,_|    "
  
nave            db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                db 0, 0DH, 0DH, 0FH, 5, 0EH, 0, 0, 0, 0
                db 0, 5, 5, 5, 0, 0, 0, 0, 0, 0
                db 0, 5, 0DH, 0DH, 5, 5, 5, 0, 0, 0
                db 0, 5, 0DH, 0DH, 0DH, 0DH, 0DH, 5, 5, 0EH
                db 0, 5, 0DH, 0DH, 0DH, 0DH, 0DH, 5, 5, 0EH
                db 0, 5, 0DH, 0DH, 5, 5, 5, 0, 0, 0
                db 0, 5, 5, 5, 0, 0, 0, 0, 0, 0
                db 0, 0DH, 0DH, 0FH, 5, 0EH, 0, 0, 0, 0
                db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

nave_escudo     db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                db 0, 0DH, 0DH, 0FH, 0BH, 0EH, 0, 0, 0, 0
                db 0, 0BH, 0BH, 0BH, 0, 0, 0, 0, 0, 0
                db 0, 0BH, 0DH, 0DH, 0BH, 0BH, 0BH, 0, 0, 0
                db 0, 0BH, 0DH, 0DH, 0DH, 0DH, 0DH, 0BH, 0BH, 0EH
                db 0, 0BH, 0DH, 0DH, 0DH, 0DH, 0DH, 0BH, 0BH, 0EH
                db 0, 0BH, 0DH, 0DH, 0BH, 0BH, 0BH, 0, 0, 0
                db 0, 0BH, 0BH, 0BH, 0, 0, 0, 0, 0, 0
                db 0, 0DH, 0DH, 0FH, 0BH, 0EH, 0, 0, 0, 0
                db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

asteroid        db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                db 0, 0, 0, 8, 8, 8, 8, 8, 0, 0
                db 0, 8, 8, 7, 0FH, 7, 8, 7, 8, 0
                db 0, 8, 7, 7, 7, 7, 7, 7, 8, 8
                db 0, 8, 0FH, 7, 0FH, 7, 7, 0FH, 7, 8
                db 0, 0, 8, 7, 0FH, 0FH, 7, 7, 7, 8
                db 0, 0, 8, 7, 7, 7, 7, 7, 8, 0
                db 0, 0, 0, 8, 8, 7, 0FH, 8, 0, 0
                db 0, 0, 0, 0, 8, 8, 8, 0, 0, 0
                db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

vida            db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                db 0, 4, 4, 4, 0, 0, 4, 4, 4, 0
                db 4, 4, 4, 4, 4, 4, 0CH, 0CH, 0CH, 4
                db 4, 4, 4, 4, 4, 4, 0CH, 0FH, 0CH, 4
                db 4, 4, 4, 4, 4, 4, 4, 0CH, 4, 4
                db 0, 4, 4, 4, 4, 4, 4, 4, 4, 0
                db 0, 0, 4, 4, 4, 4, 4, 4, 0, 0
                db 0, 0, 0, 0, 4, 4, 0, 0, 0, 0
                db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    
escudo          db 0, 0, 0, 0, 6, 6, 0, 0, 0, 0
                db 0, 0, 6, 6, 4, 4, 6, 6, 0, 0
                db 0, 6, 4, 4, 0EH, 0EH, 4, 4, 6, 0
                db 0, 6, 0EH, 0EH, 0EH, 0EH, 0EH, 0EH, 6, 0
                db 0, 6, 0EH, 0EH, 0EH, 0EH, 0EH, 0EH, 6, 0
                db 0, 6, 4, 0EH, 0EH, 0EH, 0EH, 4, 6, 0
                db 0, 6, 6, 0EH, 0EH, 0EH, 0EH, 6, 6, 0
                db 0, 0, 6, 4, 0EH, 0EH, 4, 6, 0, 0
                db 0, 0, 6, 6, 4, 4, 6, 6, 0, 0
                db 0, 0, 0, 0, 6, 6, 0, 0, 0, 0

    preto EQU 0
    azul EQU 1
    verde EQU 2
    ciano EQU 3
    vermelho EQU 4
    magenta EQU 5
    marrom EQU 6
    cinza_claro EQU 7
    cinza_escurro EQU 8
    azul_claro EQU 9
    verde_claro EQU 10
    ciano_claro EQU 11
    vermelho_claro EQU 12
    magenta_claro EQU 13
    amarelo EQU 14
    branco EQU 15
    
    ; Fixos / Calculados
    pos_nave dw 100 ;posi??o inicial da nave
    start db 1
    tempo_restante db 0
    vida_maxima EQU 10
    vida_atual db 0
    fim_de_jogo db 0
    spawn_de_vida db 0
    spawn_de_escudo db 0
    atualizacoes_ms db 0
    memoria_video EQU 0A000H
    tamX EQU 320
    colunab EQU 160

    seta_baixo EQU 80
    seta_cima EQU 72
    espaco EQU 32
    
    intervalo_ms EQU 75
    tempo_fase EQU 30
                
.code 

;-- Procs Gerais -------------------------------------------------------------------------------------

ESC_STRING proc 
    push AX BX
    mov AX, @data
    mov ES, AX
    mov AH, 13H ; escrita de string na tela
    mov BH, 0
    mov AL, 0
    int 10H
    pop BX AX
    ret
endp


VIDEO_MODE proc
    push ax
    mov ah, 0
    mov al, 13h
    int 10h
    pop ax
    ret
endp 

LER_TECLA proc
    xor ax, ax
    int 16H
    ret
endp    

SAIR_PROGRAMA proc
    mov ah, 4ch
    int 21h
    ret
endp

DESENHA proc       
    push AX BX CX DX
    push SI DI ES
    mov AX, memoria_video 
    mov ES, AX
    mov AX, DX 
    mov BX, tamX 
    mul BX
    mov DI, AX
    add DI, CX 
    mov DX, 10 
    mov CX, 10 
    DESENHAR:
    rep movsb 
    add DI, 310 
    mov CX, 10 
    dec DX 
    cmp DX, 0 
    jne DESENHAR
    
    pop ES DI SI
    pop DX CX BX AX    
    ret
endp

;-- Procs Tela de Entrada -------------------------------------------------------------------------------------
        
TELA_INICIAL proc
    ; PRINTA LOGO JOGO NOME
    mov al, 0 ; write mode
    mov bl, 2 ; cor
    mov dh, 0 ; linha       
    mov dl, 0 ; coluna   
    mov cx, 520 ; tamanho da string
    mov bp, offset logo
    call ESC_STRING
    
    ; PRINTA LOGOs ITEMS
    mov dx, 120      ; Linha inicial
    mov cx, 100       ; Coluna inicial
    mov si, offset nave
    call DESENHA
    mov cx, 140       ; Coluna inicial
    mov si, offset asteroid
    call DESENHA
    mov cx, 180       ; Coluna inicial
    mov si, offset escudo
    call DESENHA
    mov cx, 220       ; Coluna inicial
    mov si, offset vida
    call DESENHA
    
    ; PRINTA BOTOES JOGAR E SAIR
    
    ; Exibe os bot?es Jogar e Sair (n?o selecionados)
    mov bl, 0Fh      ; Cor
    mov dh, 18      ; Linha
    mov dl, 16      ; Coluna
    mov cx, 9       ; Tamanho da string
    mov bp, offset botao_jogar
    call ESC_STRING

    mov bl, 0Fh      ; Cor
    mov dh, 20      ; Linha
    mov dl, 16      ; Coluna
    mov cx, 9       ; Tamanho da string
    mov bp, offset botao_sair
    call ESC_STRING
    
Opcoes:
    
    ; Logica para selecao de botoes
    call LER_TECLA
    cmp ah, seta_cima    ; Verifica se a tecla pressionada seta cima (para selecionar Jogar)
    je  SelecionaJogar
    cmp ah, seta_baixo    ; Verifica se a tecla pressionada seta baixo (para selecionar Sair)
    je  SelecionaSair
    cmp al, 13    ; Verifica se a tecla pressionada enter
    je OpcaoDefinida
    jmp Opcoes ; Se nenhuma tecla de selecao foi pressionada, continua exibindo a tela inicial
    
OpcaoDefinida:    
    cmp start, 1
    je CHAMA_JOGAR
    call SAIR_PROGRAMA
    jmp Opcoes
    
CHAMA_JOGAR:   
    call JOGAR

SelecionaJogar:
    ; Atualiza o bot?o Jogar para o estado selecionado
    mov bl, 15      
    mov dh, 18      ; Linha
    mov dl, 16      ; Coluna
    mov cx, 9       ; Tamanho da string
    mov bp, offset botao_jogar_selecionado
    mov start, 1
    call ESC_STRING

    ; Atualiza o bot?o Sair para o estado n?o selecionado
    mov bl, 15      
    mov dh, 20      ; Linha
    mov dl, 16      ; Coluna
    mov cx, 9       ; Tamanho da string
    mov bp, offset botao_sair
    call ESC_STRING
    jmp Opcoes ; Retorna para a exibi??o da tela inicial

SelecionaSair:
    ; Atualiza o bot?o Jogar para o estado n?o selecionado
    mov bl, 15      
    mov dh, 18      ; Linha
    mov dl, 16      ; Coluna
    mov cx, 9       ; Tamanho da string
    mov bp, offset botao_jogar
    mov start, 0
    call ESC_STRING
    
    ; Atualiza o bot?o Sair para o estado selecionado
    mov bl, 15      
    mov dh, 20      ; Linha
    mov dl, 16      ; Coluna
    mov cx, 9       ; Tamanho da string
    mov bp, offset botao_sair_selecionado
    call ESC_STRING
    jmp Opcoes ; Retorna para a exibi??o da tela inicial
    
    ret
endp    
 
;-- Procs Tela do Jogo -------------------------------------------------------------------------------------

GERAR_NUM_ALEATORIA proc
    
    push dx
    mov ah,2Ch 
    int 21h
    mov ax,dx
    mov cx, 151 
    xor dx, dx
    div cx 
 
    add ax, 10
    pop dx
    ret
endp

hud_status proc
    push AX BX CX DX
    push DI ES
    mov AX, memoria_video
    mov ES, AX
    mov AX, 180
    mov CX, tamX
    mul CX
    mov DI, AX
    mov AX, 20
    mul CX
    mov CX, AX
    mov BX, amarelo
desenha_linha:
    mov ES:[DI], BL
    inc DI
    loop desenha_linha
    
    mov AL, 185
    mov AH, ciano_claro
    mov BX, 5
    call barra_hud_status
    
    mov AL, 185
    mov AH, amarelo
    mov BX, 145
    call barra_hud_status
    
    mov AL, 185
    mov AH, vermelho
    mov BX, 155
    call barra_hud_status
    
    mov AL, 185
    mov AH, amarelo
    mov BX, 165
    call barra_hud_status
    
    mov AL, 185
    mov AH, verde_claro
    mov BX, 175
    call barra_hud_status

    pop ES DI
    pop DX CX BX AX 
    ret
endp

barra_hud_status proc
    push AX BX CX DX
    push SI DI ES
    mov SI, AX
    xor AH, AH
    mov CX, tamX
    mul CX
    mov DI, AX
    add DI, BX 
    mov AX, memoria_video
    mov ES, AX
    mov BX, SI
    mov BL, BH
    xor BH, BH
    mov AX, 10 
    mov CX, 140 
desenha_barra_status:
    mov ES:[DI], BL
    inc DI
    loop desenha_barra_status
    mov CX, 140
    add DI, 180 
    dec AX
    cmp AX, 0
    jne desenha_barra_status
    pop ES DI SI
    pop DX CX BX AX 
    ret
endp

gera_asteroid proc
    call GERAR_NUM_ALEATORIA
    
    mov DX, AX
    mov CX, 309
    mov si, offset asteroid
    call DESENHA
    ret
endp

JOGAR proc
    ; Configura??o inicial do programa
    mov  AX, 13H
    int  10H
    
    mov atualizacoes_ms, intervalo_ms
    mov vida_atual, vida_maxima
    
    call hud_status
    
    mov SI, offset pos_nave
    mov DX, [SI]
    mov CX, colunab
    mov si, offset nave
    call DESENHA
    
    
    
    ; Loop principal do jogo
    game_loop:
        ; Verifica as teclas pressionadas
        call check_input
        
        call gera_asteroid
        ; Volta ao in?cio do loop principal
        jmp game_loop
        ret
        
    check_input:
        ; Chama a fun??o para ler a tecla
        call LER_TECLA

        ; Compara a tecla lida com a tecla de seta para cima
        cmp ah, seta_cima
        je  mover_nave_cima
        ; Compara a tecla lida com a tecla de seta para baixo
        cmp ah, seta_baixo
        je  mover_nave_baixo
        ; Compara a tecla lida com a tecla de espaco
        cmp ah, espaco
        ;je  atirar
        
        ret
    mover_nave_baixo:
        cmp pos_nave, 160 ; Limite Inferior
        jbe mover_baixo
        jmp game_loop
        ret
    mover_nave_cima:
    cmp pos_nave, 5 ; Limite Superior
        jae mover_cima
        jmp game_loop
        ret
    
    mover_cima:
    sub pos_nave, 1 ; sobe em 1 a nave
        mov SI, offset pos_nave
        mov DX, [SI]
        mov CX, colunab      
        mov si, offset nave
        call DESENHA
    ret
    
    mover_baixo:
    add pos_nave, 1 ; desce em 1 a nave
        mov SI, offset pos_nave
        mov DX, [SI]
        mov CX, colunab     
        mov si, offset nave
        call DESENHA
    ret    
    
       
    ret
endp



MAIN:
        ;init data segment
        mov AX, @DATA
        mov DS, AX
        
        ;set video mode
        call VIDEO_MODE
   INIT:
   call TELA_INICIAL
        
end MAIN