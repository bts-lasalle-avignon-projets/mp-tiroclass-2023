#define NUM_STRIPS 2 //nombre de bandeau leds gérés
#define NUM_LEDS_VERT 54 //nombre de led du bandeau vertical
#define NUM_LEDS_HOR 47 //nombre de led du bandeau vertical
#define NUM_DRAWERS 10 //nombre de tiroirs
#define BRIGHTNESS 200 //éclairage
#define LED_TYPE WS2812B //ref du bandeau led
#define DRAW1_CM 5 //hauteur du tiroir type 1 en centimetre
#define DRAW2_CM 10.5 //hauteur du tiroir type 2 en centimetre
#define DRAW3_CM 16 //hauteur du tiroir type 3 en centimetre
#define ORANGE_SIZE 9 //largeur d'une case orange
#define ORANGE_SEP_SIZE 4 //largeur de la séparation centrale des tiroirs oranges
#define GRAY_SIZE 12.5 //largeur d'une case grise
#define DRAW_SIZE 75//largeur d'un tiroir entier
#define LED_TO_CM 0.6167 //ratio du nombre de leds par centimetre sur le bandeau led
#define COLOR_ORDER GRB //ordre de l'annonce des couleurs (rouge, vert, bleu)
#define FASTLED_ALLOW_INTERRUPTS 0
#define FRAMES_PER_SECOND 60
#define COOLING 55
#define SPARKING 120
#define RED_VERTICAL 255 //couleur blanc bandeau vertical
#define GREEN_VERTICAL 0 //couleur blanc bandeau vertical
#define BLUE_VERTICAL 0 //couleur blanc bandeau vertical
#define RED_HORIZONTAL 255 //couleur blanc bandeau horizontal
#define GREEN_HORIZONTAL 0 //couleur blanc bandeau horizonta
#define BLUE_HORIZONTAL 0 //couleur blanc bandeau horizontas
#define DATA_MAX_SIZE 64 //taille du tableau de caractère où on stocke ce que l'on lit sur le port série
#define END_MARKER '?' //marqueur de fin de trame
#define SEPARATION_MARKER ';' //marqueur de séparation de la trame
#define START_MARKER '!' //marqueur de fin de trame
#define PIN_BANDEAU_VERT 3 //broche qui gère l'allumage des leds pour indiquer le tiroir
#define PIN_BANDEAU_HOR 4 //broche qui gère l'allumage des leds pour indiquer la colonne
#define PIN_INTER 2 //broche qui gère un bouton de validation