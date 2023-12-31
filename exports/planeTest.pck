GDPC                �                                                                         T   res://.godot/exported/133200997/export-c9bd5eb9ab3df03c5e898fdce9e3dcf6-plane.scn                 �������2	�eZ�    P   res://.godot/exported/133200997/export-ed473fb65393d895a0df52094abbd023-map.scn �      �      �Cux`Ij�C_Fj����    ,   res://.godot/global_script_class_cache.cfg  �             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexp      �      �Yz=������������       res://.godot/uid_cache.bin  �      d       �j1r���Pi�J.��Q�       res://entities/plane.gd        q      ��Ӝ�nf��R��+        res://entities/plane.tscn.remap        b       M���"��$�f6� �5       res://icon.svg        �      C��=U���^Qu��U3       res://icon.svg.import   P      �       �a8s=`�jL�IC��(       res://project.binary@       �      zA�
om��O?���       res://scenes/map.tscn.remap �      `       x/�V��0 ���8��    A��RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://entities/plane.gd ��������
   Texture2D    res://icon.svg ��g��6�7      local://RectangleShape2D_dfu0n �         local://PackedScene_t8cfb �         RectangleShape2D       
     �B  �B         PackedScene          	         names "   
      plane    scale    script    CharacterBody2D    Icon    texture 	   Sprite2D    CollisionShape2D 	   position    shape    	   variants       
   <��><��>          
   ��)?��)?         
      ?   ?                node_count             nodes     !   ��������       ����                                  ����                                 ����         	                conn_count              conns               node_paths              editable_instances              version             RSRC��q��{=0��g5extends CharacterBody2D


const SPEED = 800.0
const JUMP_VELOCITY = -8.0
const gravity = 200

var acceleration = Vector2(0, 0)



func _physics_process(delta):
	# Add the gravity.
	acceleration = Vector2(0, 0)

	acceleration.y += gravity

	# ui_accept is just space
	if Input.is_action_pressed("ui_accept"):
		acceleration.y = 0
		acceleration += Vector2(1, 0).rotated(rotation) * SPEED
	
	
	var direction = Input.get_axis("ui_left", "ui_right")
	rotation += direction * delta * 3

	velocity += acceleration * delta
	if velocity.length() > 400:
		velocity = velocity.normalized() * 400
	print(acceleration)
	move_and_slide()
l���T���	�dO-SRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    interpolation_mode    interpolation_color_space    offsets    colors    script 	   gradient    width    height    use_hdr    fill 
   fill_from    fill_to    repeat    custom_solver_bias    size 	   _bundled       PackedScene    res://entities/plane.tscn ��k�5�J      local://Gradient_kgoj1 X          local://GradientTexture2D_vs0hx q         local://RectangleShape2D_0qlx8 �         local://PackedScene_nw4du �      	   Gradient             GradientTexture2D                          RectangleShape2D       
    �RF  �B         PackedScene          	         names "         map     metadata/_edit_vertical_guides_ "   metadata/_edit_horizontal_guides_    Node2D    plane 	   position 	   Camera2D    position_smoothing_enabled    StaticBody2D    floor    scale    texture    polygon    uv 
   Polygon2D    CollisionShape2D    shape    	   variants                  >D          � D          
     /C  AC      
   '�PCD
   h1IC2�?         %      鷛�&ڿc�B����H�B�Btu?B��B]ܺ�t�B%      鷛�&ڿc�B��鿟+�Bt�B]ܺ�t�B
    ��E �%D               node_count             nodes     @   ��������       ����                            ���                                ����                           ����                  	   ����         
                     	                    ����      
                   conn_count              conns               node_paths              editable_instances              version             RSRC+��GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[  ���-���[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bxc2yde5yimf6"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 ��2� =Ԧ
E�2�[remap]

path="res://.godot/exported/133200997/export-c9bd5eb9ab3df03c5e898fdce9e3dcf6-plane.scn"
���B��.O!�[remap]

path="res://.godot/exported/133200997/export-ed473fb65393d895a0df52094abbd023-map.scn"
list=Array[Dictionary]([])
�m;:�<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
�`�w�E���   ��g��6�7   res://icon.svg���/�X   res://scenes/map.tscn��k�5�J   res://entities/plane.tscn�A��<��X��ECFG      application/config/name         planez     application/run/main_scene          res://scenes/map.tscn      application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg  #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibilityn�dnM��`