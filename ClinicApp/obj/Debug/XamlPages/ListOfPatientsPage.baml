   M S B A M L   `   `   `  ����D  @ClinicApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:ClinicApp.XamlPagesClinicApp.XamlPages  5      ?$clr-namespace:ClinicApp.EntityModelsClinicApp.EntityModels  5      ,    &ClinicApp.XamlPages.ListOfPatientsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:ClinicApp.XamlPages     5      <localModels$clr-namespace:ClinicApp.EntityModels     5      -   5          N�Name$
  page��5
   7   $
��1200��5	       N� Title$ ListOfPatientsPage��5
       N� 
Background
 ����� � 	Resources 5      2   ,ClinicApp.XamlPages.EnumDescriptionConverter   EnumDescriptionConverter��%   &	          5   
   6)   5      .��5      ]� ��. 
�������.+�5   
   c� -   5         c�Name$ toolBar��5      $	��Top=�6#   
�������.@�5      �� -   5         ��Name$ spToolsForPatientCards��5       �� Orientation$ 
Horizontal=�69   .+�5      �� -   5         ��Name$ 	txtSearch��5      $0��*Введите имя для поиска:��6/   $��18(�6N   $��Sitka Display)�5      $��SemiBold"�67   $��Center=�6M   �� 5      -   5         ��Name$ txtBoxSearch��5      ���#c9f3fd
���   �$��1q�5      $	��150��6.   $��18(�5      $��Sitka Display)�6(   $��SemiBold"�6C   $��20��6Y   5      �� 5      -   5        	 ��Name$	 lblPatientName��5      $��18(�6,   $��SemiBold"�6:   $��Sitka Display)�6P   $��	350,0,0,0q�6k   �� 5      -   5        
 ��Name$
 btnAddNewRequest��5   *   $	��Top=�6     GreenBlueButton#��[ 6D   $)��#Добавить обращение��6p   $y�	Collapsed=�5      6,   5      �� 5   
   -   5        $ spWithDataGrids��5      $ 
Horizontal=�6.   .+�5      �� -	   5        $	 
lblLoading��5      $��78(�6(   $
��Bold"�66   $y�	Collapsed=�6H   $��Center=�5      $��Center=�6/   $��20,0,0,0q�6L   $��Center=�5      $��Center=�68   ��5      �� 5        �� EndPoint$ 0.5,1&�6*    � MappingMode$ RelativeToBoundingBox=�6;    �� 
StartPoint$ 0.5,0&�6_   .��5!      �  � Color$ 	LightBlue��6'   � 5"      $ 	#FF40F79C��6'    � Offset$ 1Q�69   5#      5%      &   System.Windows.Controls.DataGrid  5&      -
   5          Name$ 
dgPatients��5&      $y�Visible=�6D   ��6+   ��    Columns 5'      0  *System.Windows.Controls.DataGridTextColumn  5(      -   5        iDColumn��,  &System.Windows.Controls.DataGridColumn   Header$ ID��5(   R      Width5  /System.Windows.Controls.DataGridLengthConverter$ 35 6^   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *Id+6^     5)      -   5        
nameColumn��$ ФИО��5)   V   $	 200 6c    6=   �� *Name+6c     5*      -   5        nameAddress��$ 
Адрес��5*   Z   $	 385 6i    6>   �� *	Address+6i     5+      -   5        dateOfBirthColumn��$ Дата рождения��5+   }   $	 110 6�    6D   �� *DateOfBirth+ �� StringFormat$ 
dd.MM.yyyy��6�     5,      -   5        patientYearOld��$ Возраст��5,   ]   $	 110 6n    6A   �� *	YearOld+6n     5-      -   5        phoneNumberColumn��$ Телефон��5-   d   $	 125 6u    6D   �� *PhoneNumber+6u     5.      -   5        genderColumn��$ Пол��5.   �   $ 80 6�    6?   �� *Gender+ �� 	Converter# [  6�   4  .System.Windows.Controls.DataGridTemplateColumn  5/      $  Редактировать��6-      CellTemplate 50      �� 51      .R�52   "   �� $
 btnModifyPatient��6)   -   5        #��[ 52   C   $ ��Редактировать��6o   $	��100��6�   53      55        56      $ Обращения��6-    57      �� 58      .R�59   "   �� $
 btnPatientRequests��6)   -   5        #��[ 59   E   $��Обращения��6q   $��80��6�   5:      5<        5=      $ Удалить��6-    5>      �� 5?      .R�5@   "   �� $
 btnDeletePatient��6)   -   5        #��[ 5@   C   $��Удалить��6o   $��60��6�   5A      5C      5E        5F      -   5        $ 
dgRequests��5F      $y�	Collapsed=�6C   $��Stretch=�5G      $��Stretch=�65   ��5F   +   ��  5H        5I      -   5        requestDateColumn��$! Дата обращения��5I      $	 175 6�    6D   �� *DateOfRequest+$ 
dd.MM.yyyy��6�     5J      -   5        requestTypeColumn��$ Тип обращения��5J   �   $	 190 6�    6D   �� *RequestType+# [  6�     5K      -   5        зurposeColumn��$ Цель��5K   \   $	 565 6j    6@   �� *	Purpose+6j     5L      $  Редактировать��6-   $	 125 6D    5M      �� 5N      .R�5O   "   �� $
 btnModifyRequest��6)   -   5        #��[ 5O   C   $ ��Редактировать��6p   6�   5P      5R        5S      $ Удалить��6-   $	 125 6>    5T      �� 5U      .R�5V   "   �� $
 btnDeleteRequest��6)   -   5        #��[ 5V   C   $��Удалить��6p   6�   5W      5Y      5[      5\      5]      5^      