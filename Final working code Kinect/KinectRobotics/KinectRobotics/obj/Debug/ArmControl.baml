   M S B A M L   `   `   `  ����  KinectRobotics    KinectRobotics.ArmControl   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      S OMicrosoft.Kinect.Toolkit, Version=1.7.0.0, Culture=neutral, PublicKeyToken=null\ XMicrosoft.Kinect.Toolkit.Controls, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null2k(http://schemas.microsoft.com/kinect/2013   5      ���#009999$��Segoe UI)�5      $��30(�5        � 	Resources  5         OnLoadedStoryboard��%   &	        �� 5   
   6   5       � Triggers 5      :� 5   
    :� RoutedEvent$ FrameworkElement.Loaded��6   .[�5      �� -   5         ��Name$( "OnLoadedStoryboard_BeginStoryboard��5      #��[  6J   5      .��5      � -   5         �Name$ kinectRegionGrid��5       � RowDefinitions 5   
   �� 5      �� 5      $��0* �6   .+�5   
   4  .Microsoft.Kinect.Toolkit.Controls.KinectRegion  -   5          Name$ kinectRegion��5      $��	0,0,215,0q�6/   .��5      :  4Microsoft.Kinect.Toolkit.Controls.KinectScrollViewer  -   5        $��scrollViewer��5   0   $��0��6#   $��Disabled=�6D   $��Disabled=�6m   ���#5ccccc$��
0,0,85.2,0q�6�   5      �� 5   
   -   5        $��ColorImageStream��5      $��251,0,-0.6,-11q�6(   $��2��6@   �� 5   
   -   5        $��
ElbowAngle��5      $��Label��6"   $
��Left=�62   $��	0,241,0,0q�6M   $��Bottom=�6`   $	��100��6{   $��49��6�   �� 5    
   -   5        $��
WristAngle��5       $��Label��6"   $
��Left=�62   $��147,240,0,0q�6M   $��Bottom=�6b   $��99��6}   $��50��6�   �� 5!   
   -   5         ��Name$ ElbowAngle_Copy��5!      $��Angle for elbow��6)   $
��Left=�6C   $��Bottom=�6^   $	��116��6y   $��46��6�   $��0,0,0,20q�6�   $��15(�6�   �� 5"   
   -	   5        $ ElbowAngle_Copy1��5"      $��Angle for wrist��6*   $
��Left=�6D   $��Bottom=�6_   $	��116��6z   $��46��6�   $��
133,0,0,20q�6�   $��15(�6�   �� 5#   
   -
   5        $ ElbowAngle_Copy2��5#      $��Area for Gripping��6*   $
��Left=�6F   $��Bottom=�6a   $	��249��6|   $��46��6�   $��
25,0,0,231q�6�   $��25(�6�   5$      5%      