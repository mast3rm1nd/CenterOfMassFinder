   M S B A M L   `   `   `  ����M  ICenterOfMassFinder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CenterOfMassFinderCenterOfMassFinder  5   	   #    CenterOfMassFinder.MainWindow   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   8x,http://schemas.microsoft.com/winfx/2006/xaml    5   	   >d2http://schemas.microsoft.com/expression/blend/2008    5   	   Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    5   	   0local clr-namespace:CenterOfMassFinder    5   	     � Title$  Rod Balancer��5   	   $��191.4��6   $��568.2��6-    � 
ResizeMode$ CanMinimize=�6;    � WindowStartupLocation$ CenterScreen=�6T   .��5	      � .+�5
   
   �� -   5         ��Name$ label��5
      $��Rod length:��6   $
��Left=�65   $��	10,10,0,0q�6P   $	��Top=�6c   �� 5   
   -   5         ��Name$ RodLength_textBox��5      $
��Left=�6-   $��23��6H   $��86.057,12.96,0,0q�6T    �� TextWrapping$
 Wrap=�6n   $	��Top=�6�   $	��120��6�   $��1��6�   �� 5   
   -   5        $ 
label_Copy��5      $��	Rod mass:��6$   $
��Left=�68   $��	10,38,0,0q�6S   $	��Top=�6f   �� 5   
   -   5        $ RodMass_textBox��5      $
��Left=�6+   $��23��6F   $��86.057,40.96,0,0q�6R   $
 Wrap=�6l   $	��Top=�6�   $	��120��6�   $��1��6�   �� 5   
   -   5        $ label_Copy1��5      $��
Left mass:��6%   $
��Left=�6:   $��	10,66,0,0q�6U   $	��Top=�6h   �� 5   
   -   5        $ LeftMass_textBox��5      $
��Left=�6,   $��23��6G   $��86.057,68.96,0,0q�6S   $
 Wrap=�6m   $	��Top=�6�   $	��120��6�   $��1��6�   �� 5   
   -   5        $ label_Copy2��5      $��Right mass:��6%   $
��Left=�6;   $��	10,94,0,0q�6V   $	��Top=�6i   �� 5   
   -   5        $ RightMass_textBox��5      $
��Left=�6-   $��23��6H   $��86.057,96.96,0,0q�6T   $
 Wrap=�6n   $	��Top=�6�   $	��120��6�   $��3��6�   �� 5   
   -	   5         ��Name$ Calculate_button��5      $��	Calculate��6+   $
��Left=�6?   $��10,124.96,0,0q�6Z   $	��Top=�6q   $��196.057��6�   6�   �� 5   
   -
   5        $ Results_TextBox��5      $
��Left=�6+   $��130.92��6F   $��211.057,14,0,0q�6V   $
 Wrap=�6n   $	��Top=�6�   $��333.943��6�    �� 
IsReadOnly . 6�   5      5      