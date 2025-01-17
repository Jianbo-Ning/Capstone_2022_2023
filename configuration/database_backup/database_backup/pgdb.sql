PGDMP                         z           wdl_final_product    14.2    14.2 #    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16524    wdl_final_product    DATABASE     f   CREATE DATABASE wdl_final_product WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
 !   DROP DATABASE wdl_final_product;
                winedatalakedb1    false            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO winedatalakedb1;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   winedatalakedb1    false    3            �            1259    16567    ava_data    TABLE     $  CREATE TABLE public.ava_data (
    ava_id integer NOT NULL,
    ava_name character varying(255) NOT NULL,
    location character varying(800),
    climate character varying(800),
    soils character varying(800),
    topography character varying(800),
    varietals character varying(800)
);
    DROP TABLE public.ava_data;
       public         heap    winedatalakedb1    false            �            1259    16566    ava_data_ava_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ava_data_ava_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ava_data_ava_id_seq;
       public          winedatalakedb1    false    212            �           0    0    ava_data_ava_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ava_data_ava_id_seq OWNED BY public.ava_data.ava_id;
          public          winedatalakedb1    false    211            �            1259    16629    bottle_data    TABLE     w  CREATE TABLE public.bottle_data (
    bottle_id integer NOT NULL,
    winery_name character varying(255),
    winery_id character varying(30),
    year character varying(6) NOT NULL,
    wine_name character varying(255),
    pct_alcohol character varying(10),
    ta character varying(10),
    ph character varying(10),
    varietals character varying(255),
    soils character varying(255),
    clones character varying(255),
    clusters character varying(255),
    aging_process character varying(255),
    cases_produced character varying(255),
    source_file character varying(255),
    run_date date DEFAULT CURRENT_DATE
);
    DROP TABLE public.bottle_data;
       public         heap    winedatalakedb1    false            �            1259    16628    bottle_data_bottle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bottle_data_bottle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.bottle_data_bottle_id_seq;
       public          winedatalakedb1    false    217            �           0    0    bottle_data_bottle_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.bottle_data_bottle_id_seq OWNED BY public.bottle_data.bottle_id;
          public          winedatalakedb1    false    216            �            1259    16577    terminology_data    TABLE     r   CREATE TABLE public.terminology_data (
    term character varying(30),
    description character varying(1000)
);
 $   DROP TABLE public.terminology_data;
       public         heap    winedatalakedb1    false            �            1259    16591    varietal_data    TABLE     r   CREATE TABLE public.varietal_data (
    varietal_id integer NOT NULL,
    varietal_name character varying(255)
);
 !   DROP TABLE public.varietal_data;
       public         heap    winedatalakedb1    false            �            1259    16590    varietal_data_varietal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.varietal_data_varietal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.varietal_data_varietal_id_seq;
       public          winedatalakedb1    false    215            �           0    0    varietal_data_varietal_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.varietal_data_varietal_id_seq OWNED BY public.varietal_data.varietal_id;
          public          winedatalakedb1    false    214            �            1259    16535    winery_data    TABLE       CREATE TABLE public.winery_data (
    winery_id integer NOT NULL,
    winery_name character varying(255) NOT NULL,
    winemaker character varying(255),
    address character varying(255),
    phone_number character varying(30),
    winery_url character varying(255)
);
    DROP TABLE public.winery_data;
       public         heap    winedatalakedb1    false            �            1259    16534    winery_data_winery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.winery_data_winery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.winery_data_winery_id_seq;
       public          winedatalakedb1    false    210            �           0    0    winery_data_winery_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.winery_data_winery_id_seq OWNED BY public.winery_data.winery_id;
          public          winedatalakedb1    false    209                       2604    16570    ava_data ava_id    DEFAULT     r   ALTER TABLE ONLY public.ava_data ALTER COLUMN ava_id SET DEFAULT nextval('public.ava_data_ava_id_seq'::regclass);
 >   ALTER TABLE public.ava_data ALTER COLUMN ava_id DROP DEFAULT;
       public          winedatalakedb1    false    211    212    212                       2604    16632    bottle_data bottle_id    DEFAULT     ~   ALTER TABLE ONLY public.bottle_data ALTER COLUMN bottle_id SET DEFAULT nextval('public.bottle_data_bottle_id_seq'::regclass);
 D   ALTER TABLE public.bottle_data ALTER COLUMN bottle_id DROP DEFAULT;
       public          winedatalakedb1    false    216    217    217                       2604    16594    varietal_data varietal_id    DEFAULT     �   ALTER TABLE ONLY public.varietal_data ALTER COLUMN varietal_id SET DEFAULT nextval('public.varietal_data_varietal_id_seq'::regclass);
 H   ALTER TABLE public.varietal_data ALTER COLUMN varietal_id DROP DEFAULT;
       public          winedatalakedb1    false    215    214    215                       2604    16538    winery_data winery_id    DEFAULT     ~   ALTER TABLE ONLY public.winery_data ALTER COLUMN winery_id SET DEFAULT nextval('public.winery_data_winery_id_seq'::regclass);
 D   ALTER TABLE public.winery_data ALTER COLUMN winery_id DROP DEFAULT;
       public          winedatalakedb1    false    210    209    210            �          0    16567    ava_data 
   TABLE DATA           e   COPY public.ava_data (ava_id, ava_name, location, climate, soils, topography, varietals) FROM stdin;
    public          winedatalakedb1    false    212   �*       �          0    16629    bottle_data 
   TABLE DATA           �   COPY public.bottle_data (bottle_id, winery_name, winery_id, year, wine_name, pct_alcohol, ta, ph, varietals, soils, clones, clusters, aging_process, cases_produced, source_file, run_date) FROM stdin;
    public          winedatalakedb1    false    217   mS       �          0    16577    terminology_data 
   TABLE DATA           =   COPY public.terminology_data (term, description) FROM stdin;
    public          winedatalakedb1    false    213   qZ       �          0    16591    varietal_data 
   TABLE DATA           C   COPY public.varietal_data (varietal_id, varietal_name) FROM stdin;
    public          winedatalakedb1    false    215   o       �          0    16535    winery_data 
   TABLE DATA           k   COPY public.winery_data (winery_id, winery_name, winemaker, address, phone_number, winery_url) FROM stdin;
    public          winedatalakedb1    false    210   Pq       �           0    0    ava_data_ava_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ava_data_ava_id_seq', 22, true);
          public          winedatalakedb1    false    211            �           0    0    bottle_data_bottle_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.bottle_data_bottle_id_seq', 38, true);
          public          winedatalakedb1    false    216            �           0    0    varietal_data_varietal_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.varietal_data_varietal_id_seq', 60, true);
          public          winedatalakedb1    false    214            �           0    0    winery_data_winery_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.winery_data_winery_id_seq', 8, true);
          public          winedatalakedb1    false    209                       2606    16574    ava_data ava_data_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ava_data
    ADD CONSTRAINT ava_data_pkey PRIMARY KEY (ava_id);
 @   ALTER TABLE ONLY public.ava_data DROP CONSTRAINT ava_data_pkey;
       public            winedatalakedb1    false    212                       2606    16637    bottle_data bottle_data_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.bottle_data
    ADD CONSTRAINT bottle_data_pkey PRIMARY KEY (bottle_id);
 F   ALTER TABLE ONLY public.bottle_data DROP CONSTRAINT bottle_data_pkey;
       public            winedatalakedb1    false    217                       2606    16596     varietal_data varietal_data_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.varietal_data
    ADD CONSTRAINT varietal_data_pkey PRIMARY KEY (varietal_id);
 J   ALTER TABLE ONLY public.varietal_data DROP CONSTRAINT varietal_data_pkey;
       public            winedatalakedb1    false    215                       2606    16542    winery_data winery_data_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.winery_data
    ADD CONSTRAINT winery_data_pkey PRIMARY KEY (winery_id);
 F   ALTER TABLE ONLY public.winery_data DROP CONSTRAINT winery_data_pkey;
       public            winedatalakedb1    false    210            �      x��]˒Wr]�_QK2� ��MR�)Q�"� 9d�Û�(u�
S�nB+}�7������j�O�%Γ��UUhR�8&��Fbw�n�G�̓'8�}U��~Y��E�l������e���mf�To��uӕ�Z�Y��Y�H���Ӭ,��E��Y��S�g�7��'��dm�WUQm������X�=c:�cc�kL`b�}��J'XT]�-�n�}��m]e4��iw4tWW��ݮh3�SQWyv�+V��V�z0mK�?ԕ�4Ҫ���+��21�aju�MY��b���v��Ee�M}ˋ�	����؛κ����,MG�V;SmiF놎�X�+���ZF�t2�4C[W��ɳ�i��ڔ=-Ѯ��nw���uYc���.a�;�@�y���2�dT>����������:Sf�b��h{,-ޏK��~�����!icLU��^��9�؏]c�6��i�>��[Sᬱ��ҋM���je�v�Ӫ3�#M�X[�6E��3Ķ�#\�ލ��'��uQ�K���l�-�ڢ�YY�}KK�s\u�y5d�+hƛ��g����$&7uI�+V�Yu�MAB&p7ڒf7�A$�rZ�ih-9&����CU�4_���e����CxsS����Y�z�پ��t���e}����i$`I�������»�Ad�d�,i�,�jۘ��Tfql6��QW�-k楽�e�+d�ݮ����Ӯ�˺'�!�e,�o�����sn�^�M��t[gI-nkkLc�纱����.{�-��k��?���#������x"�����d��U���mY`?��L�$a��)�e;�/�h��[���
w���i�uU�c�}Mgb���xa�昽���/��_���H�ؓ����]���_e�������^��?_�riW���-�Ͽ�MYw9����u�_��2��+�\uI�~]Tu�=+y��Ë�hݿeR��b_������M��o�_u�����$�-�[W�}{l�.�����6�(���E��
L��qѫ�-�.f��^��R܆�i���@�R�)��:���fՈ��L/hW�<Ǉ�]K7�#��r)��
�7��mGJ(���e�\�x#}R-%ۭ���J,�k����KR"u5�����Fk���2h��O��b%�^�93[�t�f�;]�[B[�	=,���I�͑�:M�&�Jʀ��T���`+>p�����Bf#�h4�'[�=�!T+�L�5�ɢ!�Eא^nVŚT���5ucW�4X+f�v��iS #u�l�á�s�%d��b�H?Zh}�UU+�*x�$3���%~<���h�`�h��5�6����Z�`�J�YB�������TF{Y���J�}�{@[z�[ք0|>-�#f@��'}خ,�.��)�A�ϗ��--��7�f��ɦ�@RM�����rPʑ��[H�c�^[�F��o�lvH��������
��~��\��O�su5�^�-���y�8
#�bf{؞�� �jvM��;�m��0Q<��1�_�<6O��Dgo�`�b��֬�����K�+b���Wb8�͓e�� _H��jm���Kl�r?�\�ኄ3�vmv��cd��,ܚy�C���S�e��4�Z��v��NwE���u�Q���~�K�V�3MTSԘ���0XdJo�h��\�F�{<n��	�u0����D\����{i{�K����yo�!��)�gqw��oK��إ�&q�
^�.C8�;.�p+�SC#�õ&u�hu�K�Ĝ��"�"QQ��g�����KGJ����LZ���3�DrS�J�!�d���ϕqH�ۛu�UUjb_����6�^��l� NLp�9���[�J�}����⋬�S��.���*�%�^C���~wH܎-N<H�Tk,��V�=Ơ�}�@>�"���� s��fS�
�	�!mb��!�wdZ�t��Cѱ��i�3�l9԰�L3�%F�ճZ���^Ŷd����o�D	y�P�F�@+�f�Ƅ�zU�]d���.���2XkS��:���(@{q�a�dQ�8���Fp�~O�^̔S��8`�+xA,��R�e�3�^�se-�󳳿��7�ٷ$�k�)�� G��%ڝ~v$8X8)�?��Eg��g� ��J+ɪ�ӯ��%���74��:��@����G|�!c�;�n��	��s� �lu	�m1o9jZyS��������a1�N����h�7��N�N�+�i̺�W�׿:I�C��"��K�B�?����9�� kK���KCFp��"�[��!������-D7yW�ժ?`X#��X��ّ0��:�kP�
�H��@�؏�J�S�K�e�Qz��zԢ7��E.b�ٸ��
a�='�Y�=r����2��X�-fC�L���wyd�{g���NN�):;&�R?�-�}�fJ��I��I����.��?lg���>1�ger պ�d C:�F-���Ӳ�15aH��'X	����� �2��"bA]�d�Y�Hm�QK<E�|�:��ʍ[m��\CY�ڹ�4�by�X�+����<�����4c���d�g���Hv���'gŷ4@,"�����cX+C�7<I�.�dRy�I匋U��a��HۿT�I�+pS7����}�N�oR�I�2�>�@UNK�O*�m�����c���T�`�_,��eY�I���tVtC�?���TBp������
>�b⪩2�m`�m<���I�+U 4A(�����?�lrucò��v�=���zs���Q��l���b��3690�񕇢���ʥ�<�-	2�F�#4�'S]��Ex��/c�N�C4#�c_�+wC��{8��D<[�D�E�?w!u�.�f�Hi+���01ⵟ_́XɊ����W�v���ҒY�UǦ��"�ݑ͎	�6���uR�GBJ?T����GTAy0V3fK���o+͵���o>Ӓ~M�X9U���|��
?�;�S�� l3�R�|ey`4�5��v&^V�w���b��cщ�Zԥ�n-�C�kxC����\@��˺��f�ά	���n� �:���*�[��@jI&U���r3a��}F~�n���օ܎��^���P		F�|G��^;�E�S�.��GQ��Q�z���Qs�N-n�Z�]a�uR�A=!i�u�@;K��������n@�gX�*!��*���=+oIO����� y�r�/>:F��u�O�V�&;���ÿ�G�`�_���fr�+!���[&b�2P��fo�moc��»�y��ヱ����P��Av��̬0��$pD�������y����	ٷeY@�=��!��u;��ݷE{]�>Fp��B�]ު0���A��/Z.���㳘���x�ޓDb��3�)6]̆�;�&������z�X6��`.�MUUm����?�� n5�I���?�`ȹ�jJ8-�&��m��¸n6v�r��G�W�궞B'K����ꔯ<����ˆ�9&X��Zd�F����T`w�W:�Y���6i�^�>�ۣ�T�i
��e^k��F� ��e����W8�P����7���3�!'�?��7�Dp�S��;枬���9$|�Z�]�_��KrM���q1{�����vzd��Ó_�36W\�F(�a��}E��&�[A7�rAd�B�q򩬙8��`ށ��[�W��o@�j�^n�~����5[�=�~��;����bL��5�<��w�I�F��h����Rő{���хF�����@�c�}�5�C=�%���Ni���ή����������_O��
�� �����򾣇0Մ�xGk#�){E^_]2�4s\��:N~4KlAog#��!��E|���,&Ń���ش	c�X�^��a��5ٯ�xz���kA}�6H�է�����B�����}~����b:����ʕ�e���<��:�A���DZt8yVm��+yL5�kQ�
s�?��7^4:SVh�M�ᑸ�;)X[���S�9�+0��#��[�?�^1� �-&��\e��c��-�8X5���Td��0�l��
�? d�I���ں5G��8�����!C�^�D��!�螥�P�b��k,��Ѣ@�"{��R|Ҍ��e�r$;�V��Sl�4    �&�Ɓ;��&���f�<�š����~k{ ���o��u����7�O�ȑ��b��+Ezg{�x$F�"�<	�E�����$�xt�ĳ��ژT�S	���ȳ�.�?�_3��5yW�9��G������XުDxf6zQf;���H�ɐ���'��]6�%r�ò@	��Ƿ*t/ؾg�j���u_��}W�4�)��B���v@^q���	���6�������䣠����Z΅�?��5�E��l/��5m��1�e��S�1= ��+�Φ����9f��^� s+�á�psr�L�`�윴&�}��0��J�o�]�Id�nOR'�B�~k���DdsP쇆�F�g�.��Q��[hf�iL�G�Keg|�02v]j3Mbq���kc>6�}v���5{��߀�[ϓ	8{,q��t �K��֌:�۾h%�Ήv���������C[�E�4��4O��珮x��C��J+p�m�AxL 4J�W���-⥜�e�khR%8�=F��n�d�F���$,��~MBDZX�)��$:r��y����ZI���_����ՙ;v��D��kMx�N����$�'p(� ��	)H]BwB�s�`D��S�u�:I��¬�q:j0�l~����*ͥ�^,k�;6��#��u�y=�6F(����(��ܧ����2V����N�FP^L����ҭ>I�����bo#�u�Ȗ{�{&��?��L�ے�
M-a<I!��Yk�]֫�&ԊԈc����'����s�-�$�N"�A�քWd�ltο�5�M�(�P�"GxD<�r����w��!Zvv��/���Rƕϫ�R�`J�֜���.$TM�c���{J@��c$�UUD�'�̒�z�����x\�IĜ�	ė�M�/!��m�V+C�PI�ɫ�IP�'՜�FޭK�O��q�/�fc������Sz�lȏ��-�Mw��:MOh����WZ��x�Nb7L��l�f�jQ�H��( ���H�U�̪V�eZ=U�&F�v��(������{�P��� ���D)T�1���5�.�My5^��PX�\�p�.�8�Pl��>0� b��Y��U� c��\�ߝ�������c�ec�ʶg.��uW�A���⥰\4�m/9�H�9+g\`&���HxTL�������WZ\K�~
�yQ�)�u�ro��� t:-=v\dO�a�KQ�
d�V�wR��?"k��3[H%Xo�$�K~�����d_v��Hg��Ǌ�C��-.����o?G�G��XSǡ���K�X^��/�}1KPb����$(uz��*1n��鬑8�d�:QdK� ��88�o	�p]�F�S	N�t6=m!B�K�6�y���?J}Z)�;��~�����T���"���C�8D�a�#"ʂ����/�?��O����=����5�T���5R�<ݏy�Q��^D�����@A�`2w�ٕ�2�eF�x ֍�a�]�
]y%/p���	��[�$� ��jd�Z�(N��:�l]3ӿ�.��;z�-H˗0�O�G"I�a�'��R�uI
yƛ�-��q�8��@�!B3�BP��G��-^o�#�ni�K��"�M� qBڟ��wT��'�:'�h���A^i��6E(C�S0xθDX��� �oBt����#�ɑO�0Z���X��ɵ��W��М���I̓��t�t|DpM4�Ja���>=)C>:"=,�iܾ��5��������N[�Ṛ���_��j�1��N�\3[��z�<9Bif����eO�@rr�5 t���O��{R6����UI6����^�2}k5�#J��3T����X���si�`g>�1��r�_�9/hP��Y�K�}�#��C�a����2(cBJ(ɥ����!��x��+#[����H�kb�I ,)�O/	��pT	^XCI5ž�uIr�\��MR��l���E��.�S3u�[,����rB���K~jM �@B#�F0Q����9��vG�3N=�W_�:�_��\���o�]�����*�G0�a�Z0�$�P�L#Q�\Aφ�ޒl��۸d�����)��l���p�/�&{NnReQ��,�=�|T.Ī_t��+hiu�'�G\���Ƃf�H���<.��C
��a��Y/M.������W��h��kU���*`B�k��Pp=�6lw��& ��\A��HHd�P'�@S�lL���/r��6������b�sn?�B�E�Q2��{�o-���`_�=����(�B*�����M�~�G!���K�p��pL�;1N�]|�ƆZ�w~>;A�����IG���IkZ�XW+)�u,�^^��I1���C�v�[.B�P��(�p%#ޓCs�������p�����:��y��!�A~C|0�%󀔽8:�-�����(tMk�*�eks��y	a󰏯��߸@�@ާ1�]L���m4��u�!�2q)S�y���ے�i@#�Pâ�#/FlL�yU� ���h_	S]�;�2̳�J&r�H��|�9���%��Z/��b��v	���fБ��Ã���)�g4-_B\.�������<��$~����+�M��	�|Ee�s�H �W�O�*��H�m(ٛ�ž�G���%�	�$�@J�^���*���<&p�7�"�f�4�J4�ε����\����깤�o;�X��Lz�������|�e3$�}��"���|-fc+U�U/f#��haYl��#
�+�xӲ�i�i����7I�ƥN�ʀ)�����ҳ�{�S���E�x}eJs�룉
X{KTYtBR7c�ki~ e7�9Ȁ���z/f���U��kY"C���\�����KW/D��|�"�=�`ȠЉ��w��V���E�J�i� S��uS<�qHZ�&����m���!�Ip/
Q��߻|�\Ce ��H�������-���#�ǰ�]��D��C]��GW�`��nP�j����ʊ<�f�h󞩐�OOJ�4I^:U}�n�H���ɼ�(l`�8�����qy�o)̝M�R�5'H>&�h^R�jD'1�׀<=�i���+ze��D�HuT����#ri*I󋊫}����\	8,}#_kAd p~I��2N�XK���r�.]�@H�%��s��d�)�@��7�C�h^�#�~�1=�,�ג��R�#ϼ:vV��b~�JM��>~���(ޗd�;\c*qg���C~2��<xrH�7h4�dPAe�P.�%��'�D��f�&2[�U�T9d�9�{W���(��;'|Y�"�А.P���w�*  {�����ѭ�T!0Wu��i���G�j.H�[5't-	Kג�%��j�Y /-�X'S�7���Ua濭?�g4$r9W�Ξ;�i��I�pB0�̓P�>A����q�#�^ѝ��Qo��2��V���!�[�:���<t᫸�A���B� G��{υk���R�0�¨B�ѸOPv��3�Z̯$ۡ.�Υɥ��R��'/�7���D�"1�1�6�,��^�Ιr������[��Y�d^ߗ{��t�m%�A{W�1��_�K��K��Q�������>B�r�	-?��O:�������R_��T�������I�+&��g�U�+aX0��sׇ[8y��m���O�O)#r�#�{a֢ϐ�����bj<����O��o��C�F�DjCG�O;%�1/�LזG\F���pk_kx ��{ZZ���E�qg�f��Qa�8�������.)�F�"J4;%螌'��i�1�m�x�zm�u��.t�ݩ���F.�{8�uIV{S�?�\Z�<O�^q�αXR�q"D��|@U7t;z����Y����٣��J4�EO&��u@+�"�ņ�}�n�.!bgµ�y�c�/FR�@W���;� �vz'�]57r�m�r����Gxч�����K�ɀD�;p*B's�by�$�[T&��4"����8(�n3>ȴe�J	߭�c����X�#��& ����LU���&F�(<�'�(�m���x����G��b ?����ә���Ȼ�� �  So�V8e�e���P��*�b�8E�)�����H-�٣�Q��v���n��VC(���YtT��e��a�Zr�%nrn���YdC�q,�aC�
'�i�9�X�,�`�t����eƵ�ʞ��#;]�>�T�3��g�h���:�_��ӄ��f���̟����_�f�j�K�"����olȸ��z͌[�ɀ�1|�SlI��t�������D�+6�,���aU�ē`�%"� �Ju���R�B�'��u+h	sڧ�j{$��m����SH����
�Wj2�$��2M���Hb�3�3�d����7lX�V�)6��k[�=��a��ԓ�	���0��Sy_s)���^�V��N!�S��DgG�6r?��1�0��F�N\Ĭ{ǫE�Ү3�����][[ۍ��E%�=���R^�e^c�R�b�{[�TB��mـGw6O��(��V?��p�5=�j��V�i��=�����LM
��?KX�4�ز丳���m��IK�*�o=;<�oOP0��̠��O�\\1�z���b�� �(#���Ӊ�l�y�h��r�R��g�xڲ�/����	��	�:$^\�n�8��g�IF4Nbb*|>H��9��V��v��6���H:Ww����ܗ�8���;ڕe'�+%�QT����ԈF��81b�.�;8t��=І�A�]��~U��|��h���64ӝ�~�}��ʄn�ý�6����!��-�:՘+�ч �莜!�~mV�Ag�s;��;<����w ^�������
� H����rT��Ź�x�ҨA
:�w09h�����d0����0�v�����]���b����q���΂|+IХ��4Cv�6��,�q�Bi�;�\4�u�1�ǘ-�r��1ד�'�|��>�T[zC������ wE��[���l�@�����VĚ�lrw�)��'�~�3f��;�/%��n��� eџ��f��N�	�o.�ed�+��p� �p�a1��#t�!��,F	}�K9���=����8s���v�d��0�K�"�)8��)�G�-];���֥�V��?��\�,������+�� aԠV8�t��?�HѢ=Ct�Dr}J.�����d6<Fl���&�5�W&�WZF$�/Wq�ȖD�~��8��Y��Zd��D��q��xpw�6����xf��
d�PÅ�DҸ�!d��9IQ%��0��R#�Q�F�$+�;cPz�A��ٹ "�����"r����H��Z�qQ����ׁ��w��o�u'3kI��Z8�i5�x��Рts.��u�)����#pN��3�]I6�j	sE ;��(�%���4�y�	���$�������/�TC) �㮳��]�����a0ڥ�]���Kh*��c�5��1��1�m$*��X�B�	�]����A�����3f��9���ik��	�#�̳JkI���>���:�i�a2��>���'��&ӻ:�/w;V�8�?St��v�_���/#��̧͹ѕ����,���~J����SZ�~M8�<�/fo��F�e2���l/.�R��2L�'��K��c�Y��K�_T0я�u��0��I[̓	�l���;��)56���
���q�s���q|Cߔ�f_���E;j�*iT��j#��y�ب��`�#s8E�t|=Ju��bl!R�����`��eڨ�H�Íe@3G�{��1�y�^9��a��Ip4��Y����L�_��^���tMv֮m�ca���Ұ��ئ+JG��_�&�m�ʂ�\�~	'�$�d�m�ݑi=���)��&�!d>�pn�q�=�s�8�#YT��"��B�y=I��Y��>�W.&�>�":I{,�]\�4'c��:����9�\^}~h���l�ıG�>KY\桯w_�:lk#�޴m�o�^U}\I1�����*\k;�j��Z9��a�t�F�#�o#!�.�N%#0��D�#�߷.�D�����J����To�	�ʄ��Ip�������]�SO��,4,�GW5�Ba��Wit�����s�THG�e_S(d��b�����3�jmC
�!	�D=����(p��ta�O���:;2����Ԩ���7��&�Ѻ���m��`��ս+�R#&�9���R���"�I����o]07��o��tF�ǁ��O�zIH����[g�N�W^��|7���?�����/�{���7fv*�      �   �  x��X�r�6>�O�Os!����1qS'K�D�}��`�1$�����ho��z˵O�'� E��d��C/YCa��v��t��<ݤ̺����5O/ь���z��7Ț�pq��,�:�QV����:�=dE�)z��!F�2'�.�l�E��!+I��K.-��-a��g��$y���Zg[�R�^f��1�q�6�/��C��h��Hh��my�����Ϻ�ќ�H�9';�'%(��k���!(�9�p�^�4�8�Ad��;A;��m1�����cE�L$V����5MY��
�֜��3Z¡���t�xI��� �Q O6�n5C��k__�o�� ��;ے|�#���4�yP�)�SFG�Ȳ�SJ2]�lEX
�(pS���g� w;hZ�/8�2[�k�5uЫ�`�,i���th��ݤ��)��"ן\  x��Z��pЖd��4+a�~��:A�bD&l�<:��K3ɸ������ �-O��k�Eԏ��l� )�Dk}�\5��u�*�,�3�@4��A���
�(����o$ƗS^ni~�}KbbQ-��D��V.�c���(�]Ϋ���R_���|i�&T�S왬���ET��E�^)�R���i�|V���_?�zΫ-������Ҋ�4�;�(YU�)8�(I�2Z���l!nr��b<��k�B7�P$�C����_�A�O����鍬��0�w)_��F�)Ir4z����9���/Vd�t��Z�0MQ��n��/M\��K�_���$�)����Ex�=Z�DX����)LH�3����l�8p��	Ą�udX��y�n�[�x�j+���HL<��g���,���ݶ�7�r�۔Y�6B�������^�gf�5�]%"٥�d�C��3���x�VCd]�5�'L��@$R�"-��X�^�)�~yX�A5�ϴH�ΉJ��A�����Iy>T~�gWm�mWZ~�����jD��H*�6�`Z7� Y�$���@���d[j�HL��4޶`����e{$:0�{�/^(6,$ڻ]ԝ	cJ�m ��,���4�)/�Ї
�����嫻{�e&dׄ�����h�3�V9c{2₰bT�
�_{>3����E� z�0�/е�*������/����[�f�6|���������� ���P/5�� z�q_j&�O?P��0%�pfצ��Y���L7�,�i����/�4>p�¡	�r&�s����l�.��jv��l�`!�q��*�X�7�D�^�Vw8u$�2�7��ڃ�8���	�&]p��݄O�*��7��b꙰��N�n�m��c����Á����$�A1�[pR�3��)���-Q^��N^P����6�c݁��J�Oϐ��9ay�j��}�~�?�\ݥn�O;v�HI�=Y�d��f�O�3��lh����z�X��vX�c�g:�}��������2/e����D�Ess	�5��)i�({�e�]�����K�
>�����9��g���(�`���u}��5�E��O��N4ٳ�`��Ϡ�6[J�y������#�#�m�{$�@�#j���}Q����b���Av�}������5������l��+z�F/�O�e/4��/I�Kh4��A&���U�����gQ'i���/�$%�`��}��ݥ�jk���fW��ģ�9��rF0<�f��a�A��{�*7�W�A#C%Gz�$���a!*?�:�'O�ʧV�}\#��'''�^��      �      x��[͎$��>W=!`W=@u-V� [:��4�kf�K�V&+�ۙ�4�Y5�^c/�_��&z���2+�{�=�ES]E���� �P�ڏ������M8����b2c0~L��>�K�ؾ6���َ>���l���l��޼	�K��X��c��=�ו�><��>�(B6�òߟC{vIW�1%�>΍�w�r��ɤp]��8o�}h|�l俋�PUNs��)�5�#V0�k�	�H��
�h1#�=۾��"�갦v�GW�4ڑ��!u�B�>�!��j��쐷��S������:�\�b�0�_U�]c�v��#V�e�{��ln#��`��L��a��d���̓������j+����3.���&Ȗ�������Ƴ�������ɍ����0V#���7lE3.v�c����tڙ���N���3M����.L�	�B���dZw��h���ۗ.U9q҃~�Vw\;,�����Ћ��G�d\�:l�}�Nb}�����X�5�2�~m[x�+�96/��P�\&�Ǖ��=����{�c���`P���b�T��B7o!�x_��/��Ҵ~��=�U���X;;}���JU��#L�j���I����J?��Q�{�7���dwW+d�l_���7�C����?�K�NDp��#?z���M�܈�w�m_`{��es��v���Kx9X������B��_�{���-C1nq�0�R��t��S�c�Q��!���2���O���ˬ|���G�En-q[�`�(�	�S'Yȁ��ô�b[S��ѧ�7X��1k�����8��#�q�>.�-vx���rV��Bqm��0x�O�N	fS�l��e~�Ns�H̭I�K3�����Z�Q!��ӦP�SN�S!#:;���6\|����q9~ֹ��>\zZ�P�Ӹ�D'sl�9��w6��\h��n���q�
�CdPp�� �Y���_�E\j�#`+.�OMp���W��~�nGL3�.��J�� ���>��R�#��-���`�c˳W�t̺���́O��agϓ5��H����0S\�+]��ϊU%���%U�%S+��ajN����=�lD�����A�fA��/~�6�9����&�A3��9FX�zĸ�B��i}��	Lu��`����B=�G:"����r�r���8v*:M�5g�00T�t0�I����yGD��:ǖ�=��c����aJ'�%љ:���LA����%$�}崤�.��n�`Vz�'l�v4s�
XI2�빅"��90��P'�����<~�7��@����s�eU�0�i_�\p|{Ed��'�G��N��>��#e��x��9@@�l_��p��t�m*ra�j�9Ǩ'�� s�
Lаwr%g6�7�V<���-)#I���+r[�^�~uL�C�+��$�͏��v�eG�����ԋ���y{�z���F��B'�[i��&�o_Aπ����%�d(�tXh]%#%C��������a����I�8!%�?�d�[B���������q�����\������<�`s�T4�'u",d82�nR����7#��>:�_ ���Ʃ'DD��H�0�a"��	b��Rc"�H!Y5�䰸(U%�z- �	A��I��{*�,In��4W2�x�u�@�S���Dv�|Z�����2�a$ELD6�Ɓ�a��c^H����ؘՕ���q����D�#v�źJc[: ����:��0�i˘�Ѓ����"Qh���w1�0Ʋ���]��Y��B�J���{�(t��Hp�w�ca�/���$�Z�	�����B�R�3�J'r�~:*���3 }&~I�����H*���0��,T�J��H�D^4��21S���/���|��lh!)ղ���(�LA9�?�$Dr��:ֲ�@'�M�
�|�jJ�Z�kr>��N� Z�Z��ah�<���B4� ��`�/%O��Š0w�z8��$l�A��).���L�P�Z�,���NU�I���R��Dعax�2U�$E��wJԥ���,4Zf���v��N"�s`=�k���z��DWR>�,����8��We�L�n�<�5���/U|�&�Lg���.�G)�RRȍ����}r��=���<�1��N�=ޓF�:O��8� �>�G��n����0U���V��)	�:�Sgnq�-��4�I5Y�Zbi��ˀ�M�'��@�b~ۇ64�&���LK�w����H'J�o_�(����.��̔�N����RȈ����d�Z(d�M��P��h:,-]�H`G���Or+���tܽnf?Fy���؇����-��`~<9U��'Nt�I��&�N��i2Z�(��{�D;/;��Ix)��C��0?�Q� /����f�L㘓J"4@F�ړ�j[qոsMC�Z�4��p��LĒ��C��ڤRZv��SA=?^�MVh<%�\��T���.��dm*�}$�M���xۓZC�_���t��LGJ�.��9
�FI���M��3˴Uf)�MrT/�
z�ZTH�@HG��4�D�� ?�fH�l_�����;TW��B�2K
ץh<��m̛�,�9O�|�o��3~ ��׾���Jm���3�b���8��v�b�>;�������)L����Kɲ���5;��^��ś���f�dCd"�n��u +@.�"�Ω`i�
��nx]|���|�d�ܾ���L|K���;A|;A��X�_l�T--F�ܲ(�ں�'�q$,p����Υ�7ϋ��]{)�	G���nj��vT1i�69���a'�v��f3���Y�CVD�u�ݹ�!6�s��^Z�"�u58J��Q��pA��ڊ��&ߘ�mM?�eg��7,��0�;�� ���#ίr�u���짰�kx�4��%s�o�N��K�Z�Z�{_ܨ[Ĕ��k~!���Ⱥi��T�	�x�c���]�j-�=�����q	6}�6+ز�?K�G΂}���j���s�6��%�R�kv&/��
g�B�&�y2ѽf�%@_�G�����a�[ZE��{���1�܆J���F�z�dy�;_)Z�1�IK'�t��6>A�i��݈'Ͼ^�c���v�R.��Uŭ�ε�w��= r/�L�I�y4X���H�T[�ݢa�QgiH>�wl�ê�ׄ6e�����vY#�̮��7JSv�\��ۭ��»�6�Gf�(��+��o߸�5��ӗ�J�/l�%���"	2*�f�-��t���b�A'7�'�gC��	J#�3�+�<��=�Q�!�l{sy�Km���4�����\zQl���N�r�Vڦ��l���>�y�kF��,]�*�3'^�h�DmնV�R{�"j��97���il#���oo�t����rв*^
���ɛX�\���������D�p{G�|����V^�E�-z,!�n��>ސEV��^�v�3���(#3���N����FwZU5��\��`?�s9ai�q8���óB�"�G.�ީe�My�3�!���_8G�b#
��[)}���E��1f䧏`��ˉk�
�$� �G�壧�sQ�VD2�U)�Ax"���wm�7/#�0H Vi$�0�#t�@�K"��K�|	+a�H����9(${��Yڻ+C� ��t�h�J7��Z�����
Mkc�r�O�����N��K&i*����%IH�e�9��H��C`CG��߇�?߼��=�	��N��<�����ܧ[d��f�k���u���W)F�neD�,"��OB�6�"�_^5�0j.+��u��3���oZQ�
�Ч�H��.��5�i1 �������#
�	�e��hqF�U� ����k'���l��w��.���:�E��:��y�@�G��oU�~^P!C`޿��"��q���V�0[z�b�L��ϜX�"�>����s���x�����#��"�Ӧ'���`{�&Z�S�9���?�#����T�Մ�"�U8��J�ϓܷt��T�����$��gQ8��t#�#ڕ�Cy��P�>�'i|�r���fi�����M��f��}Ђ�X菷,pR|ݏR?��0_���[Q/)#� �  �f�F>z����]�F;�t�T��x�
��-[3�*X�8��Z^�*���Ү۾��P�"X0�ش�9]�����w�_��C�Ӡ��c��j��x��u�+�N���t�T%?�1'�f�($x9�83����H~��h{�ǽ�~@��ewZ��U���YT�V�ϲk�rI'�� ��jT��$��Kq�K�e�d��D-���~��p.H
��cŝ���]�&/!׆�J�oq��aa\��x	�[���A�!�1'��@�`K��mf�6�~v=���wi��
[���|w�����,Y����(�r�N�=8���*�rD2x��e���W�����C���h @����"��,�zeS�b$U�x��3�A��.mF��$�,�F���P˄�S��ⷛ�歹��Ȯ��4��L �{�B���������E8E.�j2�q���<v���������9�d������ם8��'~F�VۇF�*Ͱ����W�q�o}��?�|@�yHY��!�s��ו(�Fi���#�4X},���I�A�`�����gY�� g�Ϡ������3@O�#]Bh�x
�6���F^���69��5���]h}������^Ug�,A��b����\�y�c�3�M�~U\���z�S����袷���Z��q���	�#�|�V:#8��`�"pv��/�ތy��,' ��I�$��l3凨ʲ~����b��G�&���S��2�;��˛����T`���p �*X�ek#�fG��ߒ�X�܎��́�e�5�f�G��V��E���P�!?�
q3�q��+p��4� ��orcF/[n2r�N��N�Ag��lj�����S���^�y�V�-�0���km�۷�F�����FV)$�ʤ�?ʳH=��F1_Ƭ[@���<(�>�p�η�"H����%���r�2�����ͧ�SHP�;c^`��BgWk���׬��1s�D�q�]~�>*ّ��ш(mD$�k�YV��+��8��)�<�J�.�������W�)�����>E`;Bn��DR�����O�jo~*��&�A�}�F9��͕�&����'�Z^y"�y�}E�����a�G2Bp�ܸ��L�1��S���#!q�� [�{i�� �C�D��>!��!��=u�3�	T�H����n��wI��      �   !  x�ER�r�@<�|�~ )�%�H�K�]��!�� &b�ծkY��o��������t��/��9�#jXP����3�yǙ��"P�R��cC,iWm�?�6����9G.�]����C����i��� 9�j"0w93*��}��Ψ�0�>V�4U�>���e�L,9��Bå$T5���s�`��@�����u)5�����%S��]TsXej<ńz"�#5F�_ޤ�z�PµXk�Ɲ,�����VP��@��K���#�(�jXs���=W���6��癨9��z����6����}������.�a}y���A�Q�F2ڋ�R`aL̸U�ƛ�]y�DC3�{��|
��$ɖ�#7sx��8!����j�3�*x�1�1+�G�ʒ�5#[s��f�(\#��ƨe�5<f���O	��<����R�j�B���62�O'�[p
��8�Ӱ�·�g`�Y�˼�b��0�s����eװ��UV~@7����[���@R��n�\l������K��V��������?>#�?k<q      �   �  x���OO�0���O1�=7q��-�,�ZڪY�e/&�6Q;r���$�� !n֌���ۆ�����[������U��R;�0��?r��N�|�i�U/�9m?H�Q`�x�C|�;
B(�nڟ�Y����R�S9�d=�P����%��x�[$��d{�zHnb|Xܮ�|/�p����U�´Q�8�����������Ł=}��(��0#Ì�(�@�2c��iWץ�8�LL�(z��1d�a��J� eBj9�e�q�fGM��<;r��=S�*S�u��-k�����=:�.0~��S�J�+&�j�˦�%^�nُ�ԌWS�����ܫR
��ck���%Scϴ�:>�	.;��j�i�Ê�B�^V�?���~ \��`^������ض�{�c�8�uu��&M�q.V�)�W��dr$�����gn�m��57���Q�Wp�m��5��L&�6�      