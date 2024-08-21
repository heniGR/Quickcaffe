PGDMP                      |         	   Adem cafe    16.4    16.4 8    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    16480 	   Adem cafe    DATABASE        CREATE DATABASE "Adem cafe" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_Tunisia.1252';
    DROP DATABASE "Adem cafe";
                postgres    false            �            1259    16481    cafe    TABLE     �   CREATE TABLE public.cafe (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    address text,
    description text,
    photo text,
    rate double precision,
    id_manager integer
);
    DROP TABLE public.cafe;
       public         heap    postgres    false            �            1259    16486    cafe_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cafe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cafe_id_seq;
       public          postgres    false    215            (           0    0    cafe_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cafe_id_seq OWNED BY public.cafe.id;
          public          postgres    false    216            �            1259    16487    menu    TABLE     [   CREATE TABLE public.menu (
    id integer NOT NULL,
    id_cafe integer,
    menu jsonb
);
    DROP TABLE public.menu;
       public         heap    postgres    false            �            1259    16492    menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.menu_id_seq;
       public          postgres    false    217            )           0    0    menu_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.menu_id_seq OWNED BY public.menu.id;
          public          postgres    false    218            �            1259    16493    order    TABLE     �   CREATE TABLE public."order" (
    id integer NOT NULL,
    status character varying(255),
    id_table integer,
    price double precision NOT NULL
);
    DROP TABLE public."order";
       public         heap    postgres    false            �            1259    16496    order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.order_id_seq;
       public          postgres    false    219            *           0    0    order_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;
          public          postgres    false    220            �            1259    16497    planning    TABLE     :   CREATE TABLE public.planning (
    id integer NOT NULL
);
    DROP TABLE public.planning;
       public         heap    postgres    false            �            1259    16500    planing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.planing_id_seq;
       public          postgres    false    221            +           0    0    planing_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.planing_id_seq OWNED BY public.planning.id;
          public          postgres    false    222            �            1259    16501    serveur_id_seq    SEQUENCE     �   CREATE SEQUENCE public.serveur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.serveur_id_seq;
       public          postgres    false            �            1259    16502    table    TABLE     �   CREATE TABLE public."table" (
    id integer NOT NULL,
    id_cafe integer,
    id_menu integer,
    status character varying(255),
    id_qr text,
    id_reserv integer
);
    DROP TABLE public."table";
       public         heap    postgres    false            �            1259    16507    table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.table_id_seq;
       public          postgres    false    224            ,           0    0    table_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.table_id_seq OWNED BY public."table".id;
          public          postgres    false    225            �            1259    16508    treated_orders    TABLE       CREATE TABLE public.treated_orders (
    id integer NOT NULL,
    id_table integer,
    id_cafe integer,
    date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    price double precision NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.treated_orders;
       public         heap    postgres    false            �            1259    16513    treated_orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.treated_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.treated_orders_id_seq;
       public          postgres    false    226            -           0    0    treated_orders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.treated_orders_id_seq OWNED BY public.treated_orders.id;
          public          postgres    false    227            �            1259    16514    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false            k           2604    16515    cafe id    DEFAULT     b   ALTER TABLE ONLY public.cafe ALTER COLUMN id SET DEFAULT nextval('public.cafe_id_seq'::regclass);
 6   ALTER TABLE public.cafe ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            l           2604    16516    menu id    DEFAULT     b   ALTER TABLE ONLY public.menu ALTER COLUMN id SET DEFAULT nextval('public.menu_id_seq'::regclass);
 6   ALTER TABLE public.menu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            m           2604    16517    order id    DEFAULT     f   ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);
 9   ALTER TABLE public."order" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            n           2604    16518    planning id    DEFAULT     i   ALTER TABLE ONLY public.planning ALTER COLUMN id SET DEFAULT nextval('public.planing_id_seq'::regclass);
 :   ALTER TABLE public.planning ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            o           2604    16519    table id    DEFAULT     f   ALTER TABLE ONLY public."table" ALTER COLUMN id SET DEFAULT nextval('public.table_id_seq'::regclass);
 9   ALTER TABLE public."table" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            p           2604    16520    treated_orders id    DEFAULT     v   ALTER TABLE ONLY public.treated_orders ALTER COLUMN id SET DEFAULT nextval('public.treated_orders_id_seq'::regclass);
 @   ALTER TABLE public.treated_orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226                      0    16481    cafe 
   TABLE DATA           W   COPY public.cafe (id, name, address, description, photo, rate, id_manager) FROM stdin;
    public          postgres    false    215   <                 0    16487    menu 
   TABLE DATA           1   COPY public.menu (id, id_cafe, menu) FROM stdin;
    public          postgres    false    217    <                 0    16493    order 
   TABLE DATA           >   COPY public."order" (id, status, id_table, price) FROM stdin;
    public          postgres    false    219   =<                 0    16497    planning 
   TABLE DATA           &   COPY public.planning (id) FROM stdin;
    public          postgres    false    221   Z<                 0    16502    table 
   TABLE DATA           Q   COPY public."table" (id, id_cafe, id_menu, status, id_qr, id_reserv) FROM stdin;
    public          postgres    false    224   w<                 0    16508    treated_orders 
   TABLE DATA           X   COPY public.treated_orders (id, id_table, id_cafe, date, price, created_at) FROM stdin;
    public          postgres    false    226   �<       .           0    0    cafe_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cafe_id_seq', 1, false);
          public          postgres    false    216            /           0    0    menu_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.menu_id_seq', 1, false);
          public          postgres    false    218            0           0    0    order_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.order_id_seq', 1, false);
          public          postgres    false    220            1           0    0    planing_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.planing_id_seq', 1, false);
          public          postgres    false    222            2           0    0    serveur_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.serveur_id_seq', 1, false);
          public          postgres    false    223            3           0    0    table_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.table_id_seq', 1, false);
          public          postgres    false    225            4           0    0    treated_orders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.treated_orders_id_seq', 1, false);
          public          postgres    false    227            5           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 1, false);
          public          postgres    false    228            t           2606    16522    cafe cafe_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cafe
    ADD CONSTRAINT cafe_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cafe DROP CONSTRAINT cafe_pkey;
       public            postgres    false    215            v           2606    16524    menu menu_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public            postgres    false    217            x           2606    16526    order order_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_pkey;
       public            postgres    false    219            z           2606    16528    planning planing_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.planning
    ADD CONSTRAINT planing_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.planning DROP CONSTRAINT planing_pkey;
       public            postgres    false    221            |           2606    16530    table table_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."table"
    ADD CONSTRAINT table_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."table" DROP CONSTRAINT table_pkey;
       public            postgres    false    224            ~           2606    16532 "   treated_orders treated_orders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.treated_orders
    ADD CONSTRAINT treated_orders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.treated_orders DROP CONSTRAINT treated_orders_pkey;
       public            postgres    false    226                       2606    16533    menu menu_id_cafe_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_id_cafe_fkey FOREIGN KEY (id_cafe) REFERENCES public.cafe(id);
 @   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_id_cafe_fkey;
       public          postgres    false    4724    215    217            �           2606    16538    order order_id_table_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_id_table_fkey FOREIGN KEY (id_table) REFERENCES public."table"(id);
 E   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_id_table_fkey;
       public          postgres    false    219    4732    224            �           2606    16543    table table_id_cafe_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public."table"
    ADD CONSTRAINT table_id_cafe_fkey FOREIGN KEY (id_cafe) REFERENCES public.cafe(id);
 D   ALTER TABLE ONLY public."table" DROP CONSTRAINT table_id_cafe_fkey;
       public          postgres    false    4724    224    215            �           2606    16548    table table_id_menu_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public."table"
    ADD CONSTRAINT table_id_menu_fkey FOREIGN KEY (id_menu) REFERENCES public.menu(id);
 D   ALTER TABLE ONLY public."table" DROP CONSTRAINT table_id_menu_fkey;
       public          postgres    false    224    4726    217            �           2606    16553 *   treated_orders treated_orders_id_cafe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treated_orders
    ADD CONSTRAINT treated_orders_id_cafe_fkey FOREIGN KEY (id_cafe) REFERENCES public.cafe(id);
 T   ALTER TABLE ONLY public.treated_orders DROP CONSTRAINT treated_orders_id_cafe_fkey;
       public          postgres    false    4724    226    215            �           2606    16558 +   treated_orders treated_orders_id_table_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treated_orders
    ADD CONSTRAINT treated_orders_id_table_fkey FOREIGN KEY (id_table) REFERENCES public."table"(id);
 U   ALTER TABLE ONLY public.treated_orders DROP CONSTRAINT treated_orders_id_table_fkey;
       public          postgres    false    224    4732    226                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     