#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int satir1, sutun1, satir2, sutun2, c, g, s, d, matrix[15][15], kernel[3][3] = {0}, sonucmatrisi[25][25] = {
            0}, toplam = 0, l = 0, assonuc[100][100] = {0};
    while (1) {
        printf("Matris boyutlarini asagida lutfen giriniz. Deger en az 3x3, en fazla 15x15 olabilir.\n");
        while (l < 1) {
            printf("Imaj matrisinin satir sayisini giriniz:");
            scanf(" %d", &satir1);
            printf("Imaj matrisinin sutun sayisini giriniz:");
            scanf(" %d", &sutun1);
            if (satir1 < 3 || sutun1 < 3 || satir1 > 15 || sutun1 > 15 || satir1 <= 0 || sutun1 <= 0) {
                printf("Satir veya sutun 3'ten kucuk veya 15'ten buyuk bir deger olamaz! \n\n");
                printf("Lutfen degerleri tekrar giriniz.\n\n");
            } else {
                break;
            }
        }
        srand(time(NULL));
        printf("Rasgele sayilar olan f matrix degeri:\n");
        for (c = 0; c < satir1; c++) {
            for (d = 0; d < sutun1; d++) {
                matrix[c][d] = rand() % 256;3;

            }
        }
        for (s = 0; s < satir1; s++) {
            for (int j = 0; j < sutun1; j++) {
                printf("%d\t", matrix[s][j]);
            }
            printf("\n");
        }
        printf("Kernel Matrix 3x3 olarak varsayilan bir sekilde ayarlanmistir. \n");
        for (c = 0; c < 3; c++) {
            for (d = 0; d < 3; d++) {
                printf("%d.satir ve %d.sutun degerini giriniz: ", c, d);
                scanf("%d", &kernel[c][d]);
                printf("\n");
            }
        }
        break;
    }
    printf("Girilen kernel matrix degerleri:\n");
    for (g = 0; g < 3; g++) {
        for (int h = 0; h < 3; h++) {
            printf("%d\t", kernel[g][h]);
        }
        printf("\n");
    }
    printf("\nKoseleri ve kenarlari 0 olacak sekilde Matris degerleri:\n");
    for (satir2 = 0; satir2 < satir1; satir2++) {
        for (sutun2 = 0; sutun2 < sutun1; sutun2++) {
            if (!(satir2 == 0 || sutun2 == 0 || sutun1 - 1 == sutun2 || satir1 - 1 == satir2)) {
                for (c = 0; c < 3; c++) {
                    for (d = 0; d < 3; d++) {
                        sonucmatrisi[c][d] = matrix[c + satir2 - 1][d + sutun2 - 1] * kernel[c][d];
                        toplam = toplam + sonucmatrisi[c][d];
                    }

                }
                assonuc[satir2][sutun2] = toplam;
            } else {
                assonuc[satir2][sutun2] = 0;
            }
            toplam = 0;

            printf("%d\t", assonuc[satir2][sutun2]);
        }
        printf("\n");
    }
    assonuc[satir2][sutun2] = 0;
    printf("Koselerin ve kenarlarin doldurulmus olan son matris ciktisi:\n");
    for (satir2 = 0; satir2 < satir1; satir2++) {
        for (sutun2 = 0; sutun2 < sutun1; sutun2++) {
            toplam = 0;
            int sonucmatrisi[3][3] = {0};
            for (c = 0; c < 3; c++) {
                for (d = 0; d < 3; d++) {
                    if (c + satir2 - 1 > satir1 - 1 || d + sutun2 - 1 > sutun1 - 1 || d + sutun2 - 1 < 0 ||
                        c + satir2 - 1 < 0) {
                        sonucmatrisi[c][d] = 0;
                    } else {
                        sonucmatrisi[c][d] = matrix[c + satir2 - 1][d + sutun2 - 1] * kernel[c][d];
                    }
                    toplam = toplam + sonucmatrisi[c][d];
                }

            }
            assonuc[satir2][sutun2] = toplam;
            printf("%d\t", assonuc[satir2][sutun2]);
        }
        printf("\n");
    }
    printf("Islem tamamlandi.");
    getchar();
    return 0;
}