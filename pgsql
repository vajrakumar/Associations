PGDMP                         t            users_directory    9.5.1    9.5.1     ]	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ^	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �            1259    24923    cities    TABLE     g   CREATE TABLE cities (
    id integer NOT NULL,
    name character varying(40),
    state_id integer
);
    DROP TABLE public.cities;
       public         postgres    false            �            1259    24921    cities_id_seq    SEQUENCE     o   CREATE SEQUENCE cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public       postgres    false    190            _	           0    0    cities_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE cities_id_seq OWNED BY cities.id;
            public       postgres    false    189            �            1259    24907    states    TABLE     Q   CREATE TABLE states (
    id integer NOT NULL,
    name character varying(40)
);
    DROP TABLE public.states;
       public         postgres    false            �            1259    24905    states_id_seq    SEQUENCE     o   CREATE SEQUENCE states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.states_id_seq;
       public       postgres    false    188            `	           0    0    states_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE states_id_seq OWNED BY states.id;
            public       postgres    false    187            �           2604    24926    id    DEFAULT     X   ALTER TABLE ONLY cities ALTER COLUMN id SET DEFAULT nextval('cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190            �           2604    24910    id    DEFAULT     X   ALTER TABLE ONLY states ALTER COLUMN id SET DEFAULT nextval('states_id_seq'::regclass);
 8   ALTER TABLE public.states ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188            Z	          0    24923    cities 
   TABLE DATA               -   COPY cities (id, name, state_id) FROM stdin;
    public       postgres    false    190   �       a	           0    0    cities_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('cities_id_seq', 4, true);
            public       postgres    false    189            X	          0    24907    states 
   TABLE DATA               #   COPY states (id, name) FROM stdin;
    public       postgres    false    188          b	           0    0    states_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('states_id_seq', 2, true);
            public       postgres    false    187            �           2606    24928    cities_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public         postgres    false    190    190            �           2606    24912    states_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.states DROP CONSTRAINT states_pkey;
       public         postgres    false    188    188            �           2606    24929    cities_state_id_fkey    FK CONSTRAINT     n   ALTER TABLE ONLY cities
    ADD CONSTRAINT cities_state_id_fkey FOREIGN KEY (state_id) REFERENCES states(id);
 E   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_state_id_fkey;
       public       postgres    false    2273    188    190            Z	   9   x�3�t�H��K��4�2��K�M��N�r�9���s�R9��L8}+�!�=... ���      X	   &   x�3�I���Q�KL)�2��N,�K,I�N����� �_     