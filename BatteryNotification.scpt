FasdUAS 1.101.10   ��   ��    l    ����  T       k          r     	 
 	 I   
�� ��
�� .sysoexecTEXT���     TEXT  m       �   h p m s e t   - g   b a t t   |   a w k   ' { p r i n t f   " % s   % s \ n " ,   $ 4 , $ 5 ; e x i t } '��   
 o      ���� 0 chargestate chargeState      r        I   �� ��
�� .sysoexecTEXT���     TEXT  m       �   � p m s e t   - g   b a t t   |   e g r e p   - o w   ' ( [ 0 - 9 ] { 1 , 3 } ) [ % ] '   |   e g r e p   - o w   ' [ 0 - 9 ] { 1 , 3 } '��    o      ����  0 batterypercent batteryPercent      r        b        o    ����  0 batterypercent batteryPercent  m       �    %  o      ���� &0 currentbatterystr currentBatteryStr      r         m    ����    o      ���� 0 delayduration delayDuration   ! " ! r    $ # $ # c    " % & % m     ����  & m     !��
�� 
long $ o      ���� &0 defualtlowwarning defualtLowWarning "  ' ( ' r   % * ) * ) c   % ( + , + m   % &���� P , m   & '��
�� 
long * o      ����  0 defaultcharged defaultCharged (  - . - P   + / 0�� / Z   0 1 2 3�� 1 F   0 ; 4 5 4 E   0 3 6 7 6 o   0 1���� 0 chargestate chargeState 7 m   1 2 8 8 � 9 9  B a t t e r y   P o w e r 5 B   6 9 : ; : o   6 7����  0 batterypercent batteryPercent ; o   7 8���� &0 defualtlowwarning defualtLowWarning 2 k   > � < <  = > = l  > >�� ? @��   ? z tdisplay notification "Battery Down to " & (percentLeft) & "%" with title "Connect to Charger" --sound name "Crsytal"    @ � A A � d i s p l a y   n o t i f i c a t i o n   " B a t t e r y   D o w n   t o   "   &   ( p e r c e n t L e f t )   &   " % "   w i t h   t i t l e   " C o n n e c t   t o   C h a r g e r "   - - s o u n d   n a m e   " C r s y t a l " >  B C B l  > >�� D E��   D   to play sound before alert    E � F F 4 t o   p l a y   s o u n d   b e f o r e   a l e r t C  G H G I  > E�� I��
�� .sysoexecTEXT���     TEXT I l  > A J���� J m   > A K K � L L N a f p l a y   / S y s t e m / L i b r a r y / S o u n d s / B l o w . a i f f��  ��  ��   H  M N M I  F h�� O P
�� .sysodisAaleR        TEXT O m   F I Q Q � R R   �>ޫ B a t t e r y   L o w P �� S T
�� 
mesS S b   L Q U V U m   L O W W � X X   B a t t e r y   D o w n   t o   V l  O P Y���� Y o   O P���� &0 currentbatterystr currentBatteryStr��  ��   T �� Z [
�� 
btns Z J   T \ \ \  ] ^ ] m   T W _ _ � ` `  D i s m i s s ^  a�� a m   W Z b b � c c  S n o o z e��   [ �� d��
�� 
dflt d m   _ b e e � f f  D i s m i s s��   N  g h g l  i i��������  ��  ��   h  i j i l  i i��������  ��  ��   j  k l k l  i i�� m n��   m � �giving up after 60 , The giving up after parameter specifies the number of seconds the dialog will automatically dismiss if no button is clicked.    n � o o" g i v i n g   u p   a f t e r   6 0   ,   T h e   g i v i n g   u p   a f t e r   p a r a m e t e r   s p e c i f i e s   t h e   n u m b e r   o f   s e c o n d s   t h e   d i a l o g   w i l l   a u t o m a t i c a l l y   d i s m i s s   i f   n o   b u t t o n   i s   c l i c k e d . l  p q p l  i i��������  ��  ��   q  r s r Z   i � t u���� t =  i t v w v n   i p x y x 1   l p��
�� 
bhit y 1   i l��
�� 
rslt w m   p s z z � { {  S n o o z e u k   w � | |  } ~ } r   w �  �  J   w � � �  � � � m   w z � � � � �  5   m i n u t e s �  � � � m   z } � � � � �  1 0   m i n u t e s �  ��� � m   } � � � � � �  1 5   m i n u t e s��   � o      ���� 0 snoozeoptions snoozeOptions ~  � � � r   � � � � � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 snoozeoptions snoozeOptions � �� � �
�� 
prmp � m   � � � � � � � . S e l e c t   s n o o z e   d u r a t i o n : � �� ���
�� 
inSL � J   � � � �  ��� � m   � � � � � � �  5   m i n u t e s��  ��   � o      ����  0 snoozeduration snoozeDuration �  ��� � Z   � � � ����� � =  � � � � � n   � � � � � m   � ���
�� 
pcls � 1   � ���
�� 
rslt � m   � ���
�� 
ctxt � k   � � � �  � � � l  � ��� � ���   � 2 ,extract the integer from the selected option    � � � � X e x t r a c t   t h e   i n t e g e r   f r o m   t h e   s e l e c t e d   o p t i o n �  � � � l  � � � � � � r   � � � � � J   � � � �  � � � m   � � � � � � �    �  ��� � m   � � � � � � �  m i n u t e s��   � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � , & Set delimiters to space and "minutes"    � � � � L   S e t   d e l i m i t e r s   t o   s p a c e   a n d   " m i n u t e s " �  ��� � r   � � � � � c   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � n   � � � � � 2  � ���
�� 
cwor � l  � � ����� � c   � � � � � o   � �����  0 snoozeduration snoozeDuration � m   � ���
�� 
ctxt��  ��   � m   � ���
�� 
long � o      ���� 0 delayduration delayDuration��  ��  ��  ��  ��  ��   s  ��� � l  � ���������  ��  ��  ��   3  � � � F   � � � � � E   � � � � � o   � ����� 0 chargestate chargeState � m   � � � � � � �  A C   P o w e r � @   � � � � � o   � �����  0 batterypercent batteryPercent � o   � �����  0 defaultcharged defaultCharged �  ��� � k   �
 � �  � � � l  � ��� � ���   � � |display notification "Remove Charger Battery at " & (percentLeft) & "%" with title "Battery ---Charged" sound name "Crsytal"    � � � � � d i s p l a y   n o t i f i c a t i o n   " R e m o v e   C h a r g e r   B a t t e r y   a t   "   &   ( p e r c e n t L e f t )   &   " % "   w i t h   t i t l e   " B a t t e r y   - - - C h a r g e d "   s o u n d   n a m e   " C r s y t a l " �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � l  � � ����� � m   � � � � � � � N a f p l a y   / S y s t e m / L i b r a r y / S o u n d s / B l o w . a i f f��  ��  ��   �  ��� � I  �
�� � �
�� .sysodisAaleR        TEXT � m   � � � � � � �  �=� B a t t r y   C h a r g e d � �� ���
�� 
mesS � b   � � � m   � � � � � & B a t t e r y   C h a r g e d   t o   � l  ����� � o  ���� &0 currentbatterystr currentBatteryStr��  ��  ��  ��  ��  ��   0 ����
�� consnume��  ��   .  ��� � I �� ���
�� .sysodelanull��� ��� nmbr � l  ����� � ]   � � � o  ���� 0 delayduration delayDuration � m  ���� <��  ��  ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � �  ����  ��  ��   �   � 7 ���� �� �������������� 0 8� K Q�~ W�} _ b�| e�{�z�y�x z � � ��w�v ��u ��t�s�r�q�p � ��o�n�m�l � � � ��k�j
�� .sysoexecTEXT���     TEXT�� 0 chargestate chargeState��  0 batterypercent batteryPercent�� &0 currentbatterystr currentBatteryStr�� 0 delayduration delayDuration�� 
�� 
long�� &0 defualtlowwarning defualtLowWarning�� P��  0 defaultcharged defaultCharged
� 
bool
�~ 
mesS
�} 
btns
�| 
dflt�{ 
�z .sysodisAaleR        TEXT
�y 
rslt
�x 
bhit�w 0 snoozeoptions snoozeOptions
�v 
prmp
�u 
inSL�t 
�s .gtqpchltns    @   @ ns  �r  0 snoozeduration snoozeDuration
�q 
pcls
�p 
ctxt
�o 
ascr
�n 
txdl
�m 
cwor
�l 
cobj�k <
�j .sysodelanull��� ��� nmbr��hZ�j E�O�j E�O��%E�OmE�O��&E�O��&E�O�g ���	 ���& �a j Oa a a �%a a a lva a a  O_ a ,a   ha a a  mvE` !O_ !a "a #a $a %kva & 'E` (O_ a ),a *  *a +a ,lv_ -a .,FO_ (a *&a /-a 0k/�&E�Y hY hOPY -�a 1	 ���& a 2j Oa 3a a 4�%l Y hVO�a 5 j 6[OY�� ascr  ��ޭ