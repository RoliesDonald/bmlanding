--
-- PostgreSQL database dump
--

\restrict O0q27A8MlHz4uwosh7sdWqIvvkDAHNUbFCzzVc3gvWkr4L3KeE2a3UQAh68x6Mt

-- Dumped from database version 17.6 (Debian 17.6-1.pgdg13+1)
-- Dumped by pg_dump version 17.6 (Debian 17.6-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: enum__pages_v_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE public.enum__pages_v_blocks_archive_populate_by OWNER TO bmadmin;

--
-- Name: enum__pages_v_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_blocks_archive_relation_to AS ENUM (
    'posts'
);


ALTER TYPE public.enum__pages_v_blocks_archive_relation_to OWNER TO bmadmin;

--
-- Name: enum__pages_v_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_link_appearance OWNER TO bmadmin;

--
-- Name: enum__pages_v_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_link_type OWNER TO bmadmin;

--
-- Name: enum__pages_v_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_size OWNER TO bmadmin;

--
-- Name: enum__pages_v_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum__pages_v_blocks_cta_links_link_appearance OWNER TO bmadmin;

--
-- Name: enum__pages_v_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_cta_links_link_type OWNER TO bmadmin;

--
-- Name: enum__pages_v_version_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum__pages_v_version_hero_links_link_appearance OWNER TO bmadmin;

--
-- Name: enum__pages_v_version_hero_links_link_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_version_hero_links_link_type OWNER TO bmadmin;

--
-- Name: enum__pages_v_version_hero_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_version_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE public.enum__pages_v_version_hero_type OWNER TO bmadmin;

--
-- Name: enum__pages_v_version_status; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__pages_v_version_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum__pages_v_version_status OWNER TO bmadmin;

--
-- Name: enum__posts_v_version_status; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum__posts_v_version_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum__posts_v_version_status OWNER TO bmadmin;

--
-- Name: enum_footer_nav_items_link_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_footer_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_footer_nav_items_link_type OWNER TO bmadmin;

--
-- Name: enum_forms_confirmation_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_forms_confirmation_type AS ENUM (
    'message',
    'redirect'
);


ALTER TYPE public.enum_forms_confirmation_type OWNER TO bmadmin;

--
-- Name: enum_header_nav_items_link_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_header_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_header_nav_items_link_type OWNER TO bmadmin;

--
-- Name: enum_pages_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE public.enum_pages_blocks_archive_populate_by OWNER TO bmadmin;

--
-- Name: enum_pages_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_blocks_archive_relation_to AS ENUM (
    'posts'
);


ALTER TYPE public.enum_pages_blocks_archive_relation_to OWNER TO bmadmin;

--
-- Name: enum_pages_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum_pages_blocks_content_columns_link_appearance OWNER TO bmadmin;

--
-- Name: enum_pages_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_content_columns_link_type OWNER TO bmadmin;

--
-- Name: enum_pages_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE public.enum_pages_blocks_content_columns_size OWNER TO bmadmin;

--
-- Name: enum_pages_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum_pages_blocks_cta_links_link_appearance OWNER TO bmadmin;

--
-- Name: enum_pages_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_cta_links_link_type OWNER TO bmadmin;

--
-- Name: enum_pages_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum_pages_hero_links_link_appearance OWNER TO bmadmin;

--
-- Name: enum_pages_hero_links_link_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_hero_links_link_type OWNER TO bmadmin;

--
-- Name: enum_pages_hero_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE public.enum_pages_hero_type OWNER TO bmadmin;

--
-- Name: enum_pages_status; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_pages_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum_pages_status OWNER TO bmadmin;

--
-- Name: enum_payload_jobs_log_state; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_payload_jobs_log_state AS ENUM (
    'failed',
    'succeeded'
);


ALTER TYPE public.enum_payload_jobs_log_state OWNER TO bmadmin;

--
-- Name: enum_payload_jobs_log_task_slug; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_payload_jobs_log_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE public.enum_payload_jobs_log_task_slug OWNER TO bmadmin;

--
-- Name: enum_payload_jobs_task_slug; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_payload_jobs_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE public.enum_payload_jobs_task_slug OWNER TO bmadmin;

--
-- Name: enum_posts_status; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_posts_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum_posts_status OWNER TO bmadmin;

--
-- Name: enum_redirects_to_type; Type: TYPE; Schema: public; Owner: bmadmin
--

CREATE TYPE public.enum_redirects_to_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_redirects_to_type OWNER TO bmadmin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _pages_v; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_type public.enum__pages_v_version_hero_type DEFAULT 'lowImpact'::public.enum__pages_v_version_hero_type,
    version_hero_rich_text jsonb,
    version_hero_media_id integer,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_generate_slug boolean DEFAULT true,
    version_slug character varying,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__pages_v_version_status DEFAULT 'draft'::public.enum__pages_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


ALTER TABLE public._pages_v OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_archive; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    intro_content jsonb,
    populate_by public.enum__pages_v_blocks_archive_populate_by DEFAULT 'collection'::public.enum__pages_v_blocks_archive_populate_by,
    relation_to public.enum__pages_v_blocks_archive_relation_to DEFAULT 'posts'::public.enum__pages_v_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_archive OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_blocks_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_archive_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_blocks_archive_id_seq OWNED BY public._pages_v_blocks_archive.id;


--
-- Name: _pages_v_blocks_content; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_content OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_content_columns; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    size public.enum__pages_v_blocks_content_columns_size DEFAULT 'oneThird'::public.enum__pages_v_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum__pages_v_blocks_content_columns_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_content_columns_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_content_columns OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_blocks_content_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_content_columns_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_blocks_content_columns_id_seq OWNED BY public._pages_v_blocks_content_columns.id;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_blocks_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNED BY public._pages_v_blocks_content.id;


--
-- Name: _pages_v_blocks_cta; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    rich_text jsonb,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_cta OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_blocks_cta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_cta_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_blocks_cta_id_seq OWNED BY public._pages_v_blocks_cta.id;


--
-- Name: _pages_v_blocks_cta_links; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_blocks_cta_links_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_cta_links_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_cta_links OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_blocks_cta_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_cta_links_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_blocks_cta_links_id_seq OWNED BY public._pages_v_blocks_cta_links.id;


--
-- Name: _pages_v_blocks_form_block; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_form_block OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_blocks_form_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_form_block_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_blocks_form_block_id_seq OWNED BY public._pages_v_blocks_form_block.id;


--
-- Name: _pages_v_blocks_media_block; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_media_block OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_blocks_media_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNED BY public._pages_v_blocks_media_block.id;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_id_seq OWNED BY public._pages_v.id;


--
-- Name: _pages_v_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    categories_id integer
);


ALTER TABLE public._pages_v_rels OWNER TO bmadmin;

--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_rels_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_rels_id_seq OWNED BY public._pages_v_rels.id;


--
-- Name: _pages_v_version_hero_links; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._pages_v_version_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_version_hero_links_link_type DEFAULT 'reference'::public.enum__pages_v_version_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_version_hero_links_link_appearance DEFAULT 'default'::public.enum__pages_v_version_hero_links_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_version_hero_links OWNER TO bmadmin;

--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._pages_v_version_hero_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNER TO bmadmin;

--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNED BY public._pages_v_version_hero_links.id;


--
-- Name: _posts_v; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._posts_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_image_id integer,
    version_content jsonb,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_generate_slug boolean DEFAULT true,
    version_slug character varying,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__posts_v_version_status DEFAULT 'draft'::public.enum__posts_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


ALTER TABLE public._posts_v OWNER TO bmadmin;

--
-- Name: _posts_v_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._posts_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._posts_v_id_seq OWNER TO bmadmin;

--
-- Name: _posts_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._posts_v_id_seq OWNED BY public._posts_v.id;


--
-- Name: _posts_v_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._posts_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public._posts_v_rels OWNER TO bmadmin;

--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._posts_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._posts_v_rels_id_seq OWNER TO bmadmin;

--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._posts_v_rels_id_seq OWNED BY public._posts_v_rels.id;


--
-- Name: _posts_v_version_populated_authors; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public._posts_v_version_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    name character varying
);


ALTER TABLE public._posts_v_version_populated_authors OWNER TO bmadmin;

--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public._posts_v_version_populated_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._posts_v_version_populated_authors_id_seq OWNER TO bmadmin;

--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public._posts_v_version_populated_authors_id_seq OWNED BY public._posts_v_version_populated_authors.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying NOT NULL,
    generate_slug boolean DEFAULT true,
    slug character varying NOT NULL,
    parent_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.categories OWNER TO bmadmin;

--
-- Name: categories_breadcrumbs; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.categories_breadcrumbs (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    doc_id integer,
    url character varying,
    label character varying
);


ALTER TABLE public.categories_breadcrumbs OWNER TO bmadmin;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO bmadmin;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: customer; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    customer_name character varying NOT NULL,
    customer_logo_id integer NOT NULL,
    website_url character varying,
    is_active boolean,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.customer OWNER TO bmadmin;

--
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_id_seq OWNER TO bmadmin;

--
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- Name: footer; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.footer (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


ALTER TABLE public.footer OWNER TO bmadmin;

--
-- Name: footer_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.footer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footer_id_seq OWNER TO bmadmin;

--
-- Name: footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.footer_id_seq OWNED BY public.footer.id;


--
-- Name: footer_nav_items; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.footer_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_nav_items_link_type DEFAULT 'reference'::public.enum_footer_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.footer_nav_items OWNER TO bmadmin;

--
-- Name: footer_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.footer_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.footer_rels OWNER TO bmadmin;

--
-- Name: footer_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.footer_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footer_rels_id_seq OWNER TO bmadmin;

--
-- Name: footer_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.footer_rels_id_seq OWNED BY public.footer_rels.id;


--
-- Name: form_submissions; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.form_submissions (
    id integer NOT NULL,
    form_id integer NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.form_submissions OWNER TO bmadmin;

--
-- Name: form_submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.form_submissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.form_submissions_id_seq OWNER TO bmadmin;

--
-- Name: form_submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.form_submissions_id_seq OWNED BY public.form_submissions.id;


--
-- Name: form_submissions_submission_data; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.form_submissions_submission_data (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    field character varying NOT NULL,
    value character varying NOT NULL
);


ALTER TABLE public.form_submissions_submission_data OWNER TO bmadmin;

--
-- Name: forms; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms (
    id integer NOT NULL,
    title character varying NOT NULL,
    submit_button_label character varying,
    confirmation_type public.enum_forms_confirmation_type DEFAULT 'message'::public.enum_forms_confirmation_type,
    confirmation_message jsonb,
    redirect_url character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.forms OWNER TO bmadmin;

--
-- Name: forms_blocks_checkbox; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_checkbox (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    default_value boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_checkbox OWNER TO bmadmin;

--
-- Name: forms_blocks_country; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_country (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_country OWNER TO bmadmin;

--
-- Name: forms_blocks_email; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_email (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_email OWNER TO bmadmin;

--
-- Name: forms_blocks_message; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_message (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    message jsonb,
    block_name character varying
);


ALTER TABLE public.forms_blocks_message OWNER TO bmadmin;

--
-- Name: forms_blocks_number; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_number (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_number OWNER TO bmadmin;

--
-- Name: forms_blocks_select; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_select (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    placeholder character varying,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_select OWNER TO bmadmin;

--
-- Name: forms_blocks_select_options; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_select_options (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    label character varying NOT NULL,
    value character varying NOT NULL
);


ALTER TABLE public.forms_blocks_select_options OWNER TO bmadmin;

--
-- Name: forms_blocks_state; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_state (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_state OWNER TO bmadmin;

--
-- Name: forms_blocks_text; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_text (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_text OWNER TO bmadmin;

--
-- Name: forms_blocks_textarea; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_blocks_textarea (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_textarea OWNER TO bmadmin;

--
-- Name: forms_emails; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.forms_emails (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    email_to character varying,
    cc character varying,
    bcc character varying,
    reply_to character varying,
    email_from character varying,
    subject character varying DEFAULT 'You''ve received a new message.'::character varying NOT NULL,
    message jsonb
);


ALTER TABLE public.forms_emails OWNER TO bmadmin;

--
-- Name: forms_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.forms_id_seq OWNER TO bmadmin;

--
-- Name: forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.forms_id_seq OWNED BY public.forms.id;


--
-- Name: gallery; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.gallery (
    id integer NOT NULL,
    title character varying NOT NULL,
    image_id integer NOT NULL,
    description character varying,
    "order" numeric DEFAULT 1 NOT NULL,
    is_active boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.gallery OWNER TO bmadmin;

--
-- Name: gallery_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.gallery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gallery_id_seq OWNER TO bmadmin;

--
-- Name: gallery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.gallery_id_seq OWNED BY public.gallery.id;


--
-- Name: header; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.header (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


ALTER TABLE public.header OWNER TO bmadmin;

--
-- Name: header_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.header_id_seq OWNER TO bmadmin;

--
-- Name: header_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.header_id_seq OWNED BY public.header.id;


--
-- Name: header_nav_items; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.header_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_header_nav_items_link_type DEFAULT 'reference'::public.enum_header_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.header_nav_items OWNER TO bmadmin;

--
-- Name: header_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.header_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.header_rels OWNER TO bmadmin;

--
-- Name: header_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.header_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.header_rels_id_seq OWNER TO bmadmin;

--
-- Name: header_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.header_rels_id_seq OWNED BY public.header_rels.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying,
    caption jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric,
    sizes_thumbnail_url character varying,
    sizes_thumbnail_width numeric,
    sizes_thumbnail_height numeric,
    sizes_thumbnail_mime_type character varying,
    sizes_thumbnail_filesize numeric,
    sizes_thumbnail_filename character varying,
    sizes_square_url character varying,
    sizes_square_width numeric,
    sizes_square_height numeric,
    sizes_square_mime_type character varying,
    sizes_square_filesize numeric,
    sizes_square_filename character varying,
    sizes_small_url character varying,
    sizes_small_width numeric,
    sizes_small_height numeric,
    sizes_small_mime_type character varying,
    sizes_small_filesize numeric,
    sizes_small_filename character varying,
    sizes_medium_url character varying,
    sizes_medium_width numeric,
    sizes_medium_height numeric,
    sizes_medium_mime_type character varying,
    sizes_medium_filesize numeric,
    sizes_medium_filename character varying,
    sizes_large_url character varying,
    sizes_large_width numeric,
    sizes_large_height numeric,
    sizes_large_mime_type character varying,
    sizes_large_filesize numeric,
    sizes_large_filename character varying,
    sizes_xlarge_url character varying,
    sizes_xlarge_width numeric,
    sizes_xlarge_height numeric,
    sizes_xlarge_mime_type character varying,
    sizes_xlarge_filesize numeric,
    sizes_xlarge_filename character varying,
    sizes_og_url character varying,
    sizes_og_width numeric,
    sizes_og_height numeric,
    sizes_og_mime_type character varying,
    sizes_og_filesize numeric,
    sizes_og_filename character varying
);


ALTER TABLE public.media OWNER TO bmadmin;

--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.media_id_seq OWNER TO bmadmin;

--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying,
    hero_type public.enum_pages_hero_type DEFAULT 'lowImpact'::public.enum_pages_hero_type,
    hero_rich_text jsonb,
    hero_media_id integer,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    generate_slug boolean DEFAULT true,
    slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_pages_status DEFAULT 'draft'::public.enum_pages_status
);


ALTER TABLE public.pages OWNER TO bmadmin;

--
-- Name: pages_blocks_archive; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    intro_content jsonb,
    populate_by public.enum_pages_blocks_archive_populate_by DEFAULT 'collection'::public.enum_pages_blocks_archive_populate_by,
    relation_to public.enum_pages_blocks_archive_relation_to DEFAULT 'posts'::public.enum_pages_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    block_name character varying
);


ALTER TABLE public.pages_blocks_archive OWNER TO bmadmin;

--
-- Name: pages_blocks_content; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


ALTER TABLE public.pages_blocks_content OWNER TO bmadmin;

--
-- Name: pages_blocks_content_columns; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    size public.enum_pages_blocks_content_columns_size DEFAULT 'oneThird'::public.enum_pages_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum_pages_blocks_content_columns_link_type DEFAULT 'reference'::public.enum_pages_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum_pages_blocks_content_columns_link_appearance
);


ALTER TABLE public.pages_blocks_content_columns OWNER TO bmadmin;

--
-- Name: pages_blocks_cta; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    rich_text jsonb,
    block_name character varying
);


ALTER TABLE public.pages_blocks_cta OWNER TO bmadmin;

--
-- Name: pages_blocks_cta_links; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_blocks_cta_links_link_type DEFAULT 'reference'::public.enum_pages_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum_pages_blocks_cta_links_link_appearance
);


ALTER TABLE public.pages_blocks_cta_links OWNER TO bmadmin;

--
-- Name: pages_blocks_form_block; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    block_name character varying
);


ALTER TABLE public.pages_blocks_form_block OWNER TO bmadmin;

--
-- Name: pages_blocks_media_block; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    block_name character varying
);


ALTER TABLE public.pages_blocks_media_block OWNER TO bmadmin;

--
-- Name: pages_hero_links; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_hero_links_link_type DEFAULT 'reference'::public.enum_pages_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_hero_links_link_appearance DEFAULT 'default'::public.enum_pages_hero_links_link_appearance
);


ALTER TABLE public.pages_hero_links OWNER TO bmadmin;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_id_seq OWNER TO bmadmin;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.pages_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    categories_id integer
);


ALTER TABLE public.pages_rels OWNER TO bmadmin;

--
-- Name: pages_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.pages_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_rels_id_seq OWNER TO bmadmin;

--
-- Name: pages_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.pages_rels_id_seq OWNED BY public.pages_rels.id;


--
-- Name: payload_jobs; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.payload_jobs (
    id integer NOT NULL,
    input jsonb,
    completed_at timestamp(3) with time zone,
    total_tried numeric DEFAULT 0,
    has_error boolean DEFAULT false,
    error jsonb,
    task_slug public.enum_payload_jobs_task_slug,
    queue character varying DEFAULT 'default'::character varying,
    wait_until timestamp(3) with time zone,
    processing boolean DEFAULT false,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_jobs OWNER TO bmadmin;

--
-- Name: payload_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.payload_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_jobs_id_seq OWNER TO bmadmin;

--
-- Name: payload_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.payload_jobs_id_seq OWNED BY public.payload_jobs.id;


--
-- Name: payload_jobs_log; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.payload_jobs_log (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    executed_at timestamp(3) with time zone NOT NULL,
    completed_at timestamp(3) with time zone NOT NULL,
    task_slug public.enum_payload_jobs_log_task_slug NOT NULL,
    task_i_d character varying NOT NULL,
    input jsonb,
    output jsonb,
    state public.enum_payload_jobs_log_state NOT NULL,
    error jsonb
);


ALTER TABLE public.payload_jobs_log OWNER TO bmadmin;

--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_locked_documents OWNER TO bmadmin;

--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_locked_documents_id_seq OWNER TO bmadmin;

--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    media_id integer,
    categories_id integer,
    users_id integer,
    redirects_id integer,
    forms_id integer,
    form_submissions_id integer,
    search_id integer,
    payload_jobs_id integer,
    customer_id integer,
    gallery_id integer
);


ALTER TABLE public.payload_locked_documents_rels OWNER TO bmadmin;

--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNER TO bmadmin;

--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_migrations OWNER TO bmadmin;

--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_migrations_id_seq OWNER TO bmadmin;

--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_preferences OWNER TO bmadmin;

--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_preferences_id_seq OWNER TO bmadmin;

--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer
);


ALTER TABLE public.payload_preferences_rels OWNER TO bmadmin;

--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNER TO bmadmin;

--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying,
    hero_image_id integer,
    content jsonb,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    generate_slug boolean DEFAULT true,
    slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_posts_status DEFAULT 'draft'::public.enum_posts_status
);


ALTER TABLE public.posts OWNER TO bmadmin;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO bmadmin;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: posts_populated_authors; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.posts_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    name character varying
);


ALTER TABLE public.posts_populated_authors OWNER TO bmadmin;

--
-- Name: posts_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.posts_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public.posts_rels OWNER TO bmadmin;

--
-- Name: posts_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.posts_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_rels_id_seq OWNER TO bmadmin;

--
-- Name: posts_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.posts_rels_id_seq OWNED BY public.posts_rels.id;


--
-- Name: redirects; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.redirects (
    id integer NOT NULL,
    "from" character varying NOT NULL,
    to_type public.enum_redirects_to_type DEFAULT 'reference'::public.enum_redirects_to_type,
    to_url character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.redirects OWNER TO bmadmin;

--
-- Name: redirects_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.redirects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.redirects_id_seq OWNER TO bmadmin;

--
-- Name: redirects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.redirects_id_seq OWNED BY public.redirects.id;


--
-- Name: redirects_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.redirects_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.redirects_rels OWNER TO bmadmin;

--
-- Name: redirects_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.redirects_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.redirects_rels_id_seq OWNER TO bmadmin;

--
-- Name: redirects_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.redirects_rels_id_seq OWNED BY public.redirects_rels.id;


--
-- Name: search; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.search (
    id integer NOT NULL,
    title character varying,
    priority numeric,
    slug character varying,
    meta_title character varying,
    meta_description character varying,
    meta_image_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.search OWNER TO bmadmin;

--
-- Name: search_categories; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.search_categories (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    relation_to character varying,
    category_i_d character varying,
    title character varying
);


ALTER TABLE public.search_categories OWNER TO bmadmin;

--
-- Name: search_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.search_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.search_id_seq OWNER TO bmadmin;

--
-- Name: search_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.search_id_seq OWNED BY public.search.id;


--
-- Name: search_rels; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.search_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer
);


ALTER TABLE public.search_rels OWNER TO bmadmin;

--
-- Name: search_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.search_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.search_rels_id_seq OWNER TO bmadmin;

--
-- Name: search_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.search_rels_id_seq OWNED BY public.search_rels.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone
);


ALTER TABLE public.users OWNER TO bmadmin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: bmadmin
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO bmadmin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bmadmin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_sessions; Type: TABLE; Schema: public; Owner: bmadmin
--

CREATE TABLE public.users_sessions (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    created_at timestamp(3) with time zone,
    expires_at timestamp(3) with time zone NOT NULL
);


ALTER TABLE public.users_sessions OWNER TO bmadmin;

--
-- Name: _pages_v id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v ALTER COLUMN id SET DEFAULT nextval('public._pages_v_id_seq'::regclass);


--
-- Name: _pages_v_blocks_archive id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_archive ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_archive_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_content ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content_columns id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_columns_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_cta ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta_links id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_links_id_seq'::regclass);


--
-- Name: _pages_v_blocks_form_block id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_form_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_form_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_media_block id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_media_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_media_block_id_seq'::regclass);


--
-- Name: _pages_v_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_rels ALTER COLUMN id SET DEFAULT nextval('public._pages_v_rels_id_seq'::regclass);


--
-- Name: _pages_v_version_hero_links id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_version_hero_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_version_hero_links_id_seq'::regclass);


--
-- Name: _posts_v id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v ALTER COLUMN id SET DEFAULT nextval('public._posts_v_id_seq'::regclass);


--
-- Name: _posts_v_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v_rels ALTER COLUMN id SET DEFAULT nextval('public._posts_v_rels_id_seq'::regclass);


--
-- Name: _posts_v_version_populated_authors id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v_version_populated_authors ALTER COLUMN id SET DEFAULT nextval('public._posts_v_version_populated_authors_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- Name: footer id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.footer ALTER COLUMN id SET DEFAULT nextval('public.footer_id_seq'::regclass);


--
-- Name: footer_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.footer_rels ALTER COLUMN id SET DEFAULT nextval('public.footer_rels_id_seq'::regclass);


--
-- Name: form_submissions id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.form_submissions ALTER COLUMN id SET DEFAULT nextval('public.form_submissions_id_seq'::regclass);


--
-- Name: forms id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms ALTER COLUMN id SET DEFAULT nextval('public.forms_id_seq'::regclass);


--
-- Name: gallery id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.gallery ALTER COLUMN id SET DEFAULT nextval('public.gallery_id_seq'::regclass);


--
-- Name: header id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.header ALTER COLUMN id SET DEFAULT nextval('public.header_id_seq'::regclass);


--
-- Name: header_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.header_rels ALTER COLUMN id SET DEFAULT nextval('public.header_rels_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_rels ALTER COLUMN id SET DEFAULT nextval('public.pages_rels_id_seq'::regclass);


--
-- Name: payload_jobs id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_jobs ALTER COLUMN id SET DEFAULT nextval('public.payload_jobs_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: posts_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts_rels ALTER COLUMN id SET DEFAULT nextval('public.posts_rels_id_seq'::regclass);


--
-- Name: redirects id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.redirects ALTER COLUMN id SET DEFAULT nextval('public.redirects_id_seq'::regclass);


--
-- Name: redirects_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.redirects_rels ALTER COLUMN id SET DEFAULT nextval('public.redirects_rels_id_seq'::regclass);


--
-- Name: search id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.search ALTER COLUMN id SET DEFAULT nextval('public.search_id_seq'::regclass);


--
-- Name: search_rels id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.search_rels ALTER COLUMN id SET DEFAULT nextval('public.search_rels_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: _pages_v; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v (id, parent_id, version_title, version_hero_type, version_hero_rich_text, version_hero_media_id, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_generate_slug, version_slug, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
57	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:35:41.111+00	2025-10-23 14:14:01.111+00	published	2025-10-28 12:35:41.141+00	2025-10-28 12:35:41.141+00	t	f
8	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:04:33.211+00	2025-10-23 14:14:01.111+00	published	2025-10-23 18:04:33.252+00	2025-10-23 18:04:33.252+00	f	f
56	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:35:39.351+00	2025-10-23 14:14:01.111+00	draft	2025-10-28 12:35:18.907+00	2025-10-28 12:35:39.351+00	f	t
2	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	\N	f	home	2025-10-23 14:14:01.112+00	2025-10-23 14:14:01.111+00	published	2025-10-23 14:14:01.142+00	2025-10-23 14:14:01.142+00	f	f
4	2	Contact	none	\N	\N	\N	\N	\N	\N	f	contact	2025-10-23 14:22:03.156+00	2025-10-23 14:14:01.115+00	published	2025-10-23 14:14:01.115+00	2025-10-23 14:22:03.173+00	t	f
1	2	Contact	none	\N	\N	\N	\N	\N	\N	f	contact	2025-10-23 14:14:01.115+00	2025-10-23 14:14:01.115+00	published	2025-10-23 14:14:01.126+00	2025-10-23 14:14:01.126+00	f	f
3	2	Contact	none	\N	\N	\N	\N	\N	2025-10-23 14:21:30.223+00	f	contact	2025-10-23 14:21:40.581+00	2025-10-23 14:14:01.115+00	draft	2025-10-23 14:21:30.224+00	2025-10-23 14:21:40.581+00	f	t
39	5	Bung Mekanik	lowImpact	\N	\N	Bung Mekanik | Power Dashboard	12	Bung Mekanik adalah sebuah bengkel customer oriented	2025-10-27 22:57:16.636+00	f	f	2025-10-27 23:01:33.608+00	2025-10-27 22:57:07.288+00	published	2025-10-27 23:01:33.645+00	2025-10-27 23:01:33.645+00	f	f
37	5	\N	lowImpact	\N	\N	\N	\N	\N	\N	t	\N	2025-10-27 22:57:07.289+00	2025-10-27 22:57:07.288+00	draft	2025-10-27 22:57:07.312+00	2025-10-27 22:57:07.312+00	f	f
28	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 09:46:09.498+00	2025-10-23 14:14:01.111+00	draft	2025-10-26 09:45:27.426+00	2025-10-26 09:46:09.498+00	f	t
22	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-24 03:05:36.485+00	2025-10-23 14:14:01.111+00	draft	2025-10-24 03:05:29.812+00	2025-10-24 03:05:36.485+00	f	t
17	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:15:59.198+00	2025-10-23 14:14:01.111+00	draft	2025-10-23 18:15:19.536+00	2025-10-23 18:15:59.198+00	f	t
38	5	Bung Mekanik	lowImpact	\N	\N	Bung Mekanik | Power Dashboard	12	Bung Mekanik adalah sebuah bengkel customer oriented	2025-10-27 22:57:16.636+00	f	f	2025-10-27 23:01:31.938+00	2025-10-27 22:57:07.288+00	draft	2025-10-27 22:57:16.648+00	2025-10-27 23:01:31.938+00	f	t
40	5	Bung Mekanik	lowImpact	\N	\N	Bung Mekanik | Power Dashboard	12	Bung Mekanik adalah sebuah bengkel customer oriented	2025-10-27 22:57:16.636+00	f	f	2025-10-27 23:05:20.45+00	2025-10-27 22:57:07.288+00	draft	2025-10-27 23:05:18.232+00	2025-10-27 23:05:20.45+00	f	t
41	5	Bung Mekanik	lowImpact	\N	\N	Bung Mekanik | Power Dashboard	12	Bung Mekanik adalah sebuah bengkel customer oriented	2025-10-27 22:57:16.636+00	f	f	2025-10-27 23:05:22.432+00	2025-10-27 22:57:07.288+00	published	2025-10-27 23:05:22.457+00	2025-10-27 23:05:22.457+00	f	f
42	5	Bung Mekanik	lowImpact	\N	\N	Bung Mekanik | Power Dashboard	12	Bung Mekanik adalah sebuah bengkel customer oriented	2025-10-27 22:57:16.636+00	f	f	2025-10-27 23:06:24.067+00	2025-10-27 22:57:07.288+00	draft	2025-10-27 23:05:26.231+00	2025-10-27 23:06:24.067+00	f	t
50	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:10:32.88+00	2025-10-23 14:14:01.111+00	draft	2025-10-28 12:09:11.076+00	2025-10-28 12:10:32.88+00	f	t
54	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:34:09.228+00	2025-10-23 14:14:01.111+00	draft	2025-10-28 12:34:09.228+00	2025-10-28 12:34:09.228+00	f	t
16	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:14:04.58+00	2025-10-23 14:14:01.111+00	published	2025-10-23 18:14:04.622+00	2025-10-23 18:14:04.622+00	f	f
43	5	Bung Mekanik	lowImpact	\N	\N	Bung Mekanik | Power Dashboard	12	Bung Mekanik adalah sebuah bengkel customer oriented	2025-10-27 22:57:16.636+00	f	f	2025-10-27 23:06:25.643+00	2025-10-27 22:57:07.288+00	published	2025-10-27 23:06:25.685+00	2025-10-27 23:06:25.685+00	f	f
6	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:00:14.684+00	2025-10-23 14:14:01.111+00	published	2025-10-23 18:00:14.753+00	2025-10-23 18:00:14.753+00	f	f
25	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	4	Bung Mekanik	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 09:40:08.215+00	2025-10-23 14:14:01.111+00	published	2025-10-26 09:40:08.276+00	2025-10-26 09:40:08.276+00	f	f
21	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekani", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-24 03:01:40.81+00	2025-10-23 14:14:01.111+00	published	2025-10-24 03:01:40.87+00	2025-10-24 03:01:40.87+00	f	f
19	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekani", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-24 02:52:18.285+00	2025-10-23 14:14:01.111+00	draft	2025-10-24 02:52:04.85+00	2025-10-24 02:52:18.285+00	f	t
45	5	Bung Mekanik	lowImpact	\N	\N	Bung Mekanik | Power Dashboard	12	Bung Mekanik adalah sebuah bengkel customer oriented	2025-10-27 22:57:16.636+00	f	gallery	2025-10-27 23:07:08.517+00	2025-10-27 22:57:07.288+00	published	2025-10-27 23:07:08.549+00	2025-10-27 23:07:08.549+00	t	f
44	5	Bung Mekanik	lowImpact	\N	\N	Bung Mekanik | Power Dashboard	12	Bung Mekanik adalah sebuah bengkel customer oriented	2025-10-27 22:57:16.636+00	f	gallery	2025-10-27 23:07:05.792+00	2025-10-27 22:57:07.288+00	draft	2025-10-27 23:07:02.655+00	2025-10-27 23:07:05.792+00	f	t
30	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 11:46:14.464+00	2025-10-23 14:14:01.111+00	draft	2025-10-26 11:45:32.359+00	2025-10-26 11:46:14.464+00	f	t
20	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekani", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-24 02:55:04.798+00	2025-10-23 14:14:01.111+00	published	2025-10-24 02:55:04.84+00	2025-10-24 02:55:04.84+00	f	f
33	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 12:05:21.146+00	2025-10-23 14:14:01.111+00	published	2025-10-26 12:05:21.198+00	2025-10-26 12:05:21.198+00	f	f
31	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 11:46:16.125+00	2025-10-23 14:14:01.111+00	published	2025-10-26 11:46:16.186+00	2025-10-26 11:46:16.186+00	f	f
18	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:16:00.58+00	2025-10-23 14:14:01.111+00	published	2025-10-23 18:16:00.619+00	2025-10-23 18:16:00.619+00	f	f
46	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:08:25.857+00	2025-10-23 14:14:01.111+00	draft	2025-10-28 12:08:08.751+00	2025-10-28 12:08:25.857+00	f	t
52	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:11:17.386+00	2025-10-23 14:14:01.111+00	draft	2025-10-28 12:10:45.733+00	2025-10-28 12:11:17.386+00	f	t
48	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:08:54.514+00	2025-10-23 14:14:01.111+00	draft	2025-10-28 12:08:54.514+00	2025-10-28 12:08:54.514+00	f	t
24	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	4	Bung Mekanik	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 09:40:05.904+00	2025-10-23 14:14:01.111+00	draft	2025-10-26 09:39:44.798+00	2025-10-26 09:40:05.904+00	f	t
23	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-24 03:06:07.468+00	2025-10-23 14:14:01.111+00	published	2025-10-24 03:06:07.527+00	2025-10-24 03:06:07.527+00	f	f
27	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 09:40:58.462+00	2025-10-23 14:14:01.111+00	published	2025-10-26 09:40:58.498+00	2025-10-26 09:40:58.498+00	f	f
15	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:13:59.605+00	2025-10-23 14:14:01.111+00	draft	2025-10-23 18:13:31+00	2025-10-23 18:13:59.605+00	f	t
12	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:06:10.924+00	2025-10-23 14:14:01.111+00	published	2025-10-23 18:06:10.953+00	2025-10-23 18:06:10.953+00	f	f
47	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:08:31.593+00	2025-10-23 14:14:01.111+00	published	2025-10-28 12:08:31.645+00	2025-10-28 12:08:31.645+00	f	f
13	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:08:31.848+00	2025-10-23 14:14:01.111+00	draft	2025-10-23 18:08:31.848+00	2025-10-23 18:08:31.848+00	f	t
55	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:34:49.033+00	2025-10-23 14:14:01.111+00	published	2025-10-28 12:34:49.064+00	2025-10-28 12:34:49.064+00	f	f
29	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 09:46:11.701+00	2025-10-23 14:14:01.111+00	published	2025-10-26 09:46:11.729+00	2025-10-26 09:46:11.729+00	f	f
51	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:10:34.102+00	2025-10-23 14:14:01.111+00	published	2025-10-28 12:10:34.135+00	2025-10-28 12:10:34.135+00	f	f
7	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:04:31.756+00	2025-10-23 14:14:01.111+00	draft	2025-10-23 18:04:31.756+00	2025-10-23 18:04:31.756+00	f	t
5	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:00:09.549+00	2025-10-23 14:14:01.111+00	draft	2025-10-23 18:00:09.549+00	2025-10-23 18:00:09.549+00	f	t
9	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:04:57.762+00	2025-10-23 14:14:01.111+00	draft	2025-10-23 18:04:57.762+00	2025-10-23 18:04:57.762+00	f	t
14	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:08:34.316+00	2025-10-23 14:14:01.111+00	published	2025-10-23 18:08:34.347+00	2025-10-23 18:08:34.347+00	f	f
49	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:08:56.348+00	2025-10-23 14:14:01.111+00	published	2025-10-28 12:08:56.391+00	2025-10-28 12:08:56.391+00	f	f
32	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 12:05:18.875+00	2025-10-23 14:14:01.111+00	draft	2025-10-26 12:05:18.875+00	2025-10-26 12:05:18.875+00	f	t
53	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:11:21.009+00	2025-10-23 14:14:01.111+00	published	2025-10-28 12:11:21.032+00	2025-10-28 12:11:21.032+00	f	f
10	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:04:59.076+00	2025-10-23 14:14:01.111+00	published	2025-10-23 18:04:59.107+00	2025-10-23 18:04:59.107+00	f	f
26	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-26 09:40:52.304+00	2025-10-23 14:14:01.111+00	draft	2025-10-26 09:40:38.834+00	2025-10-26 09:40:52.304+00	f	t
11	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	2025-10-23 18:00:09.543+00	f	home	2025-10-23 18:06:09.313+00	2025-10-23 14:14:01.111+00	draft	2025-10-23 18:06:08.213+00	2025-10-23 18:06:09.313+00	f	t
\.


--
-- Data for Name: _pages_v_blocks_archive; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", _uuid, block_name) FROM stdin;
3	2	version.layout	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	5	version.layout	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	6	version.layout	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	7	version.layout	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	8	version.layout	5	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	9	version.layout	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	10	version.layout	7	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	11	version.layout	9	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	12	version.layout	10	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	13	version.layout	11	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	14	version.layout	12	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	15	version.layout	18	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	16	version.layout	19	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
2	53	version.layout	237	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	17	version.layout	25	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	18	version.layout	26	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	49	version.layout	169	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
2	51	version.layout	202	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
2	54	version.layout	238	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	19	version.layout	42	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	20	version.layout	43	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	21	version.layout	44	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	22	version.layout	46	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	23	version.layout	47	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
2	55	version.layout	239	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	26	version.layout	92	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	27	version.layout	93	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	30	version.layout	160	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	31	version.layout	161	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	32	version.layout	162	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	33	version.layout	163	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	24	version.layout	77	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	25	version.layout	78	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	46	version.layout	166	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	47	version.layout	167	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
2	56	version.layout	262	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
2	57	version.layout	263	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	48	version.layout	168	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
2	50	version.layout	201	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	28	version.layout	150	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
3	29	version.layout	151	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
2	52	version.layout	236	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	68fa382948de2f0092cccfed	Archive Block
\.


--
-- Data for Name: _pages_v_blocks_content; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v_blocks_content (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
1	2	version.layout	1	68fa382948de2f0092cccfeb	Content Block
2	5	version.layout	2	68fa382948de2f0092cccfeb	Content Block
2	6	version.layout	3	68fa382948de2f0092cccfeb	Content Block
2	7	version.layout	4	68fa382948de2f0092cccfeb	Content Block
2	8	version.layout	5	68fa382948de2f0092cccfeb	Content Block
2	9	version.layout	6	68fa382948de2f0092cccfeb	Content Block
2	10	version.layout	7	68fa382948de2f0092cccfeb	Content Block
1	50	version.layout	231	68fa382948de2f0092cccfeb	Content Block
2	11	version.layout	9	68fa382948de2f0092cccfeb	Content Block
2	12	version.layout	10	68fa382948de2f0092cccfeb	Content Block
1	13	version.layout	11	68fa382948de2f0092cccfeb	Content Block
1	14	version.layout	12	68fa382948de2f0092cccfeb	Content Block
1	51	version.layout	232	68fa382948de2f0092cccfeb	Content Block
1	15	version.layout	18	68fa382948de2f0092cccfeb	Content Block
1	16	version.layout	19	68fa382948de2f0092cccfeb	Content Block
1	30	version.layout	160	68fa382948de2f0092cccfeb	Content Block
1	31	version.layout	161	68fa382948de2f0092cccfeb	Content Block
1	32	version.layout	162	68fa382948de2f0092cccfeb	Content Block
1	17	version.layout	25	68fa382948de2f0092cccfeb	Content Block
1	18	version.layout	26	68fa382948de2f0092cccfeb	Content Block
1	33	version.layout	163	68fa382948de2f0092cccfeb	Content Block
1	26	version.layout	92	68fa382948de2f0092cccfeb	Content Block
1	27	version.layout	93	68fa382948de2f0092cccfeb	Content Block
1	38	version.layout	166	68fff9bb0a43b50add05a651	\N
1	39	version.layout	167	68fff9bb0a43b50add05a651	\N
1	40	version.layout	170	68fff9bb0a43b50add05a651	Gall
1	41	version.layout	171	68fff9bb0a43b50add05a651	Gall
1	19	version.layout	42	68fa382948de2f0092cccfeb	Content Block
1	20	version.layout	43	68fa382948de2f0092cccfeb	Content Block
1	21	version.layout	44	68fa382948de2f0092cccfeb	Content Block
1	22	version.layout	46	68fa382948de2f0092cccfeb	Content Block
1	23	version.layout	47	68fa382948de2f0092cccfeb	Content Block
1	42	version.layout	187	68fff9bb0a43b50add05a651	Gall
1	43	version.layout	188	68fff9bb0a43b50add05a651	Gall
1	44	version.layout	192	68fff9bb0a43b50add05a651	Gall
1	45	version.layout	193	68fff9bb0a43b50add05a651	Gall
1	46	version.layout	196	68fa382948de2f0092cccfeb	Content Block
1	47	version.layout	197	68fa382948de2f0092cccfeb	Content Block
1	48	version.layout	198	68fa382948de2f0092cccfeb	Content Block
1	49	version.layout	199	68fa382948de2f0092cccfeb	Content Block
1	52	version.layout	266	68fa382948de2f0092cccfeb	Content Block
1	53	version.layout	267	68fa382948de2f0092cccfeb	Content Block
1	54	version.layout	268	68fa382948de2f0092cccfeb	Content Block
1	24	version.layout	77	68fa382948de2f0092cccfeb	Content Block
1	25	version.layout	78	68fa382948de2f0092cccfeb	Content Block
1	55	version.layout	269	68fa382948de2f0092cccfeb	Content Block
1	28	version.layout	150	68fa382948de2f0092cccfeb	Content Block
1	29	version.layout	151	68fa382948de2f0092cccfeb	Content Block
1	56	version.layout	292	68fa382948de2f0092cccfeb	Content Block
1	57	version.layout	293	68fa382948de2f0092cccfeb	Content Block
\.


--
-- Data for Name: _pages_v_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	1	1	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	1	2	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	1	3	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	1	4	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	1	5	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	1	6	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	2	7	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	2	8	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	2	9	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	2	10	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	2	11	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	2	12	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	3	13	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	3	14	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	3	15	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	3	16	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	3	17	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	3	18	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	4	19	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	4	20	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	4	21	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	4	22	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	4	23	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
1	43	253	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
6	4	24	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	5	25	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	5	26	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	5	27	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	5	28	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	5	29	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	5	30	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	6	31	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	6	32	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	6	33	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	6	34	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	6	35	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	6	36	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	7	37	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	7	38	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	7	39	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	7	40	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	7	41	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	7	42	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
2	43	254	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	43	255	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	43	256	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
1	231	1190	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Our Goals", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mantain in ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
5	43	257	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	43	258	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	9	49	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	9	50	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	9	51	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	9	52	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	9	53	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	9	54	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	10	55	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	10	56	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	10	57	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	10	58	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	10	59	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	10	60	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	11	61	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
1	44	259	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	11	62	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	11	63	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	11	64	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	11	65	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	11	66	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	12	67	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	68fa382948de2f0092cccfe5
2	12	68	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	12	69	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	12	70	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	12	71	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	12	72	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
2	44	260	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	44	261	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	44	262	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
1	267	1334	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Our Goals", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mantain in ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
5	44	263	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	44	264	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
2	231	1191	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
3	231	1192	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
4	231	1193	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
2	267	1335	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
3	267	1336	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
1	232	1194	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Our Goals", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mantain in ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
2	232	1195	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
3	232	1196	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
4	232	1197	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
4	267	1337	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
1	46	271	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	46	272	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	46	273	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	46	274	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	46	275	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	46	276	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	268	1338	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Our Goals", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mantain in ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
2	268	1339	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
1	47	277	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	47	278	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	47	279	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	47	280	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
1	18	103	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Cor	default	68fa382948de2f0092cccfe5
2	18	104	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	18	105	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	18	106	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	18	107	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	18	108	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	19	109	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	19	110	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe6
3	19	111	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	19	112	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	19	113	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	19	114	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
5	47	281	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	47	282	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
3	268	1340	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
4	268	1341	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
1	269	1342	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Our Goals", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mantain in ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
2	269	1343	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
3	269	1344	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
4	269	1345	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
1	25	145	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	25	146	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	25	147	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	25	148	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	25	149	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	25	150	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	26	151	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	26	152	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	26	153	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	26	154	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	26	155	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	26	156	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	160	955	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	160	956	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	160	957	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	160	958	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	160	959	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	160	960	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	161	961	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	161	962	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	161	963	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	161	964	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
1	42	247	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	42	248	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
5	161	965	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
3	42	249	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	42	250	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	42	251	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	42	252	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
6	161	966	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	162	967	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	162	968	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	162	969	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	162	970	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	162	971	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
1	92	547	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	92	548	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
6	162	972	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
3	92	549	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	92	550	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	92	551	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	92	552	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	93	553	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	93	554	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	93	555	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	93	556	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	93	557	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	93	558	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	163	973	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	163	974	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	163	975	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	163	976	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	163	977	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	163	978	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	292	1434	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Our Goals", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mantain in ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
2	292	1435	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
3	292	1436	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
4	292	1437	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
1	293	1438	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Our Goals", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mantain in ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
2	293	1439	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
3	293	1440	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
4	293	1441	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
1	187	995	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "dadasdada", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	t	reference	\N	\N	Coba Galery	outline	68fffab60a43b50add05a655
1	188	996	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "dadasdada", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	t	reference	\N	\N	Coba Galery	outline	68fffab60a43b50add05a655
1	192	1000	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "dadasdada", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	t	reference	\N	\N	Coba Galery	outline	68fffab60a43b50add05a655
1	193	1001	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "dadasdada", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	t	reference	\N	\N	Coba Galery	outline	68fffab60a43b50add05a655
1	196	1014	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	196	1015	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	196	1016	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	196	1017	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	196	1018	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	196	1019	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	197	1020	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	197	1021	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	197	1022	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	197	1023	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	197	1024	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
1	77	457	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	77	458	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
6	197	1025	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
3	77	459	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	77	460	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	77	461	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	77	462	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	78	463	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	78	464	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	78	465	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	78	466	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	78	467	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	78	468	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	198	1026	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
2	198	1027	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
3	198	1028	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
4	198	1029	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
5	198	1030	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	199	1031	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
2	199	1032	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
3	199	1033	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
4	199	1034	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
5	199	1035	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	266	1330	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Our Goals", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mantain in ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
2	266	1331	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
3	266	1332	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
4	266	1333	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
1	150	895	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	150	896	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	150	897	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	150	898	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
6	151	906	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
5	150	899	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
6	150	900	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfea
1	151	901	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	t	reference	\N	\N	Core	default	68fa382948de2f0092cccfe5
2	151	902	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	t	reference	\N	\N	Admin	default	68fa382948de2f0092cccfe6
3	151	903	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe7
4	151	904	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe8
5	151	905	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	68fa382948de2f0092cccfe9
\.


--
-- Data for Name: _pages_v_blocks_cta; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v_blocks_cta (_order, _parent_id, _path, id, rich_text, _uuid, block_name) FROM stdin;
4	2	version.layout	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	5	version.layout	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	6	version.layout	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	7	version.layout	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	8	version.layout	5	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	9	version.layout	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	10	version.layout	7	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
3	53	version.layout	237	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Get in Touch with our Team", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	11	version.layout	9	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	12	version.layout	10	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	13	version.layout	11	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	14	version.layout	12	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
3	54	version.layout	238	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Get in Touch with our Team", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
3	55	version.layout	239	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Get in Touch with our Team", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	15	version.layout	18	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	16	version.layout	19	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	30	version.layout	160	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	31	version.layout	161	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	17	version.layout	25	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
3	56	version.layout	262	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Get in Touch with our Team", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Let's make a connectio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
3	57	version.layout	263	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Get in Touch with our Team", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Let's make a connection", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	18	version.layout	26	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	32	version.layout	162	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	26	version.layout	92	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	27	version.layout	93	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	33	version.layout	163	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	46	version.layout	166	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	47	version.layout	167	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	48	version.layout	168	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	19	version.layout	42	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	20	version.layout	43	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	21	version.layout	44	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	22	version.layout	46	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	23	version.layout	47	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	49	version.layout	169	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	24	version.layout	77	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	25	version.layout	78	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
3	50	version.layout	201	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
3	51	version.layout	202	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	28	version.layout	150	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
4	29	version.layout	151	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
3	52	version.layout	236	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Get in Touch with our Team", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccfef	CTA
\.


--
-- Data for Name: _pages_v_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	1	1	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	2	2	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	3	3	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	4	4	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	5	5	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	6	6	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	7	7	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	238	238	reference	\N	/posts	Sent us an email	default	68fa382948de2f0092cccfee
1	9	9	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	10	10	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	11	11	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	12	12	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	239	239	reference	\N	/posts	Sent us an email	default	68fa382948de2f0092cccfee
1	18	18	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	19	19	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	160	160	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	161	161	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	162	162	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	25	25	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	26	26	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	163	163	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	92	92	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	93	93	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	166	166	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	167	167	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	168	168	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	169	169	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	42	42	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	43	43	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	44	44	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	46	46	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	47	47	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	262	262	reference	\N	/posts	Sent us an email	default	68fa382948de2f0092cccfee
1	263	263	reference	\N	/posts	Sent us an email	default	68fa382948de2f0092cccfee
1	201	201	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	202	202	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	77	77	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	78	78	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	150	150	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	151	151	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfee
1	236	236	reference	\N	/posts	Sent us an email	default	68fa382948de2f0092cccfee
1	237	237	reference	\N	/posts	Sent us an email	default	68fa382948de2f0092cccfee
\.


--
-- Data for Name: _pages_v_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, _uuid, block_name) FROM stdin;
1	1	version.layout	1	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Example contact form:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	68fa382948de2f0092cccff0	\N
1	3	version.layout	8	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Example contact form Coy:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	68fa382948de2f0092cccff0	\N
1	4	version.layout	9	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Example contact form:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	68fa382948de2f0092cccff0	\N
\.


--
-- Data for Name: _pages_v_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v_blocks_media_block (_order, _parent_id, _path, id, media_id, _uuid, block_name) FROM stdin;
2	2	version.layout	1	2	68fa382948de2f0092cccfec	Media Block
1	5	version.layout	2	2	68fa382948de2f0092cccfec	Media Block
1	6	version.layout	3	2	68fa382948de2f0092cccfec	Media Block
1	7	version.layout	4	2	68fa382948de2f0092cccfec	Media Block
1	8	version.layout	5	2	68fa382948de2f0092cccfec	Media Block
1	9	version.layout	6	2	68fa382948de2f0092cccfec	Media Block
1	10	version.layout	7	2	68fa382948de2f0092cccfec	Media Block
1	11	version.layout	9	2	68fa382948de2f0092cccfec	Media Block
1	12	version.layout	10	2	68fa382948de2f0092cccfec	Media Block
2	13	version.layout	11	2	68fa382948de2f0092cccfec	Media Block
2	14	version.layout	12	2	68fa382948de2f0092cccfec	Media Block
2	15	version.layout	18	2	68fa382948de2f0092cccfec	Media Block
2	16	version.layout	19	2	68fa382948de2f0092cccfec	Media Block
2	30	version.layout	160	2	68fa382948de2f0092cccfec	Media Block
2	31	version.layout	161	2	68fa382948de2f0092cccfec	Media Block
2	32	version.layout	162	2	68fa382948de2f0092cccfec	Media Block
2	17	version.layout	25	2	68fa382948de2f0092cccfec	Media Block
2	18	version.layout	26	2	68fa382948de2f0092cccfec	Media Block
2	33	version.layout	163	2	68fa382948de2f0092cccfec	Media Block
2	26	version.layout	92	2	68fa382948de2f0092cccfec	Media Block
2	27	version.layout	93	2	68fa382948de2f0092cccfec	Media Block
2	46	version.layout	166	2	68fa382948de2f0092cccfec	Media Block
2	47	version.layout	167	2	68fa382948de2f0092cccfec	Media Block
2	48	version.layout	168	2	68fa382948de2f0092cccfec	Media Block
2	49	version.layout	169	2	68fa382948de2f0092cccfec	Media Block
2	19	version.layout	42	2	68fa382948de2f0092cccfec	Media Block
2	20	version.layout	43	2	68fa382948de2f0092cccfec	Media Block
2	21	version.layout	44	2	68fa382948de2f0092cccfec	Media Block
2	22	version.layout	46	2	68fa382948de2f0092cccfec	Media Block
2	23	version.layout	47	2	68fa382948de2f0092cccfec	Media Block
2	24	version.layout	77	2	68fa382948de2f0092cccfec	Media Block
2	25	version.layout	78	2	68fa382948de2f0092cccfec	Media Block
2	28	version.layout	150	2	68fa382948de2f0092cccfec	Media Block
2	29	version.layout	151	2	68fa382948de2f0092cccfec	Media Block
\.


--
-- Data for Name: _pages_v_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
1	1	7	version.layout.2.categories	\N	\N	2
2	1	8	version.layout.2.categories	\N	\N	2
3	1	9	version.layout.2.categories	\N	\N	2
4	2	9	version.layout.2.categories	\N	\N	3
5	1	10	version.layout.2.categories	\N	\N	2
6	2	10	version.layout.2.categories	\N	\N	3
387	\N	50	version.layout.0.columns.0.link.reference	\N	3	\N
388	\N	50	version.layout.0.columns.1.link.reference	\N	3	\N
389	\N	51	version.layout.0.columns.0.link.reference	\N	3	\N
10	\N	15	version.layout.0.columns.0.link.reference	\N	1	\N
11	\N	16	version.layout.0.columns.0.link.reference	\N	1	\N
390	\N	51	version.layout.0.columns.1.link.reference	\N	3	\N
475	\N	54	version.layout.0.columns.0.link.reference	\N	3	\N
476	\N	54	version.layout.0.columns.1.link.reference	\N	3	\N
477	\N	54	version.layout.2.links.0.link.reference	2	\N	\N
478	\N	55	version.layout.0.columns.0.link.reference	\N	3	\N
17	\N	17	version.layout.0.columns.0.link.reference	\N	1	\N
18	\N	17	version.layout.0.columns.1.link.reference	\N	3	\N
19	\N	18	version.layout.0.columns.0.link.reference	\N	1	\N
20	\N	18	version.layout.0.columns.1.link.reference	\N	3	\N
479	\N	55	version.layout.0.columns.1.link.reference	\N	3	\N
480	\N	55	version.layout.2.links.0.link.reference	2	\N	\N
287	\N	30	version.layout.0.columns.0.link.reference	\N	1	\N
288	\N	30	version.layout.0.columns.1.link.reference	\N	3	\N
289	\N	31	version.layout.0.columns.0.link.reference	\N	1	\N
290	\N	31	version.layout.0.columns.1.link.reference	\N	3	\N
291	\N	32	version.layout.0.columns.0.link.reference	\N	1	\N
292	\N	32	version.layout.0.columns.1.link.reference	\N	3	\N
293	\N	33	version.layout.0.columns.0.link.reference	\N	1	\N
294	\N	33	version.layout.0.columns.1.link.reference	\N	3	\N
151	\N	26	version.layout.0.columns.0.link.reference	\N	1	\N
152	\N	26	version.layout.0.columns.1.link.reference	\N	3	\N
153	\N	27	version.layout.0.columns.0.link.reference	\N	1	\N
154	\N	27	version.layout.0.columns.1.link.reference	\N	3	\N
51	\N	19	version.layout.0.columns.0.link.reference	\N	1	\N
52	\N	19	version.layout.0.columns.1.link.reference	\N	3	\N
53	\N	20	version.layout.0.columns.0.link.reference	\N	1	\N
54	\N	20	version.layout.0.columns.1.link.reference	\N	3	\N
55	\N	21	version.layout.0.columns.0.link.reference	\N	1	\N
56	\N	21	version.layout.0.columns.1.link.reference	\N	3	\N
59	\N	22	version.layout.0.columns.0.link.reference	\N	1	\N
60	\N	22	version.layout.0.columns.1.link.reference	\N	3	\N
61	\N	23	version.layout.0.columns.0.link.reference	\N	1	\N
62	\N	23	version.layout.0.columns.1.link.reference	\N	3	\N
307	\N	42	version.layout.0.columns.0.link.reference	5	\N	\N
308	\N	43	version.layout.0.columns.0.link.reference	5	\N	\N
312	\N	44	version.layout.0.columns.0.link.reference	5	\N	\N
313	\N	45	version.layout.0.columns.0.link.reference	5	\N	\N
318	\N	46	version.layout.0.columns.0.link.reference	\N	1	\N
319	\N	46	version.layout.0.columns.1.link.reference	\N	3	\N
320	\N	47	version.layout.0.columns.0.link.reference	\N	1	\N
321	\N	47	version.layout.0.columns.1.link.reference	\N	3	\N
322	\N	48	version.layout.0.columns.0.link.reference	\N	3	\N
323	\N	49	version.layout.0.columns.0.link.reference	\N	3	\N
324	\N	49	version.layout.0.columns.1.link.reference	\N	3	\N
121	\N	24	version.layout.0.columns.0.link.reference	\N	1	\N
122	\N	24	version.layout.0.columns.1.link.reference	\N	3	\N
123	\N	25	version.layout.0.columns.0.link.reference	\N	1	\N
124	\N	25	version.layout.0.columns.1.link.reference	\N	3	\N
547	\N	56	version.layout.0.columns.0.link.reference	\N	3	\N
548	\N	56	version.layout.0.columns.1.link.reference	\N	3	\N
549	\N	56	version.layout.2.links.0.link.reference	2	\N	\N
550	\N	57	version.layout.0.columns.0.link.reference	\N	3	\N
551	\N	57	version.layout.0.columns.1.link.reference	\N	3	\N
552	\N	57	version.layout.2.links.0.link.reference	2	\N	\N
469	\N	52	version.layout.0.columns.0.link.reference	\N	3	\N
470	\N	52	version.layout.0.columns.1.link.reference	\N	3	\N
471	\N	52	version.layout.2.links.0.link.reference	2	\N	\N
472	\N	53	version.layout.0.columns.0.link.reference	\N	3	\N
473	\N	53	version.layout.0.columns.1.link.reference	\N	3	\N
474	\N	53	version.layout.2.links.0.link.reference	2	\N	\N
267	\N	28	version.layout.0.columns.0.link.reference	\N	1	\N
268	\N	28	version.layout.0.columns.1.link.reference	\N	3	\N
269	\N	29	version.layout.0.columns.0.link.reference	\N	1	\N
270	\N	29	version.layout.0.columns.1.link.reference	\N	3	\N
\.


--
-- Data for Name: _pages_v_version_hero_links; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._pages_v_version_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	2	1	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	2	2	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	5	3	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	5	4	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	6	5	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	6	6	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	7	7	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	7	8	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	8	9	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	8	10	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	9	11	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	9	12	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	10	13	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	10	14	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	50	402	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	50	403	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	11	17	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	11	18	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	12	19	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	12	20	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	13	21	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	13	22	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	14	23	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	14	24	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	15	35	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	15	36	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	16	37	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	16	38	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	30	319	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	30	320	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	31	321	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	31	322	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	32	323	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	32	324	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	17	49	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	17	50	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	18	51	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	18	52	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	33	325	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	33	326	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	26	183	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	26	184	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	27	185	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	27	186	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	46	332	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	46	333	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	47	334	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	47	335	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	48	336	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	48	337	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	49	338	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	49	339	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	19	83	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	19	84	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	20	85	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	20	86	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	21	87	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	21	88	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	22	91	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	22	92	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	23	93	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	23	94	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	24	153	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	24	154	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	25	155	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	25	156	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	28	299	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	28	300	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	29	301	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	29	302	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	51	404	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	51	405	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	54	476	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	54	477	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	55	478	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	55	479	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	56	524	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	56	525	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	57	526	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	57	527	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	52	472	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	52	473	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
1	53	474	custom	\N	/posts	All posts	default	68fa382948de2f0092cccfe3
2	53	475	custom	\N	/contact	Contact	outline	68fa382948de2f0092cccfe4
\.


--
-- Data for Name: _posts_v; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._posts_v (id, parent_id, version_title, version_hero_image_id, version_content, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_generate_slug, version_slug, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
4	1	Digital Horizons: A Glimpse into Tomorrow	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfcb", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfcc", "code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfcd", "media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfce", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	3	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2025-10-23 14:14:00.795+00	f	digital-horizons	2025-10-23 14:14:00.903+00	2025-10-23 14:14:00.797+00	published	2025-10-23 14:14:00.912+00	2025-10-23 14:14:00.912+00	t	f
1	1	Digital Horizons: A Glimpse into Tomorrow	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	3	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2025-10-23 14:14:00.795+00	f	digital-horizons	2025-10-23 14:14:00.798+00	2025-10-23 14:14:00.797+00	published	2025-10-23 14:14:00.806+00	2025-10-23 14:14:00.806+00	f	f
5	2	Global Gaze: Beyond the Headlines	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfd5", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfd6", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfd7", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	2	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-10-23 14:14:00.834+00	f	global-gaze	2025-10-23 14:14:00.968+00	2025-10-23 14:14:00.836+00	published	2025-10-23 14:14:00.974+00	2025-10-23 14:14:00.974+00	t	f
2	2	Global Gaze: Beyond the Headlines	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	2	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-10-23 14:14:00.834+00	f	global-gaze	2025-10-23 14:14:00.836+00	2025-10-23 14:14:00.836+00	published	2025-10-23 14:14:00.842+00	2025-10-23 14:14:00.842+00	f	f
6	3	Dollar and Sense: The Financial Forecast	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"id": "68fa382948de2f0092cccfdb", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382948de2f0092cccfdc", "media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382948de2f0092cccfdd", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	1	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-10-23 14:14:00.863+00	f	dollar-and-sense-the-financial-forecast	2025-10-23 14:14:01.028+00	2025-10-23 14:14:00.865+00	published	2025-10-23 14:14:01.035+00	2025-10-23 14:14:01.035+00	t	f
3	3	Dollar and Sense: The Financial Forecast	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	1	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-10-23 14:14:00.863+00	f	dollar-and-sense-the-financial-forecast	2025-10-23 14:14:00.865+00	2025-10-23 14:14:00.865+00	published	2025-10-23 14:14:00.869+00	2025-10-23 14:14:00.869+00	f	f
\.


--
-- Data for Name: _posts_v_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._posts_v_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
1	1	1	version.authors	\N	\N	2
2	1	2	version.authors	\N	\N	2
3	1	3	version.authors	\N	\N	2
4	1	4	version.relatedPosts	2	\N	\N
5	2	4	version.relatedPosts	3	\N	\N
6	1	4	version.authors	\N	\N	2
7	1	5	version.relatedPosts	1	\N	\N
8	2	5	version.relatedPosts	3	\N	\N
9	1	5	version.authors	\N	\N	2
10	1	6	version.relatedPosts	1	\N	\N
11	2	6	version.relatedPosts	2	\N	\N
12	1	6	version.authors	\N	\N	2
\.


--
-- Data for Name: _posts_v_version_populated_authors; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public._posts_v_version_populated_authors (_order, _parent_id, id, _uuid, name) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.categories (id, title, generate_slug, slug, parent_id, updated_at, created_at) FROM stdin;
1	Technology	f	technology	\N	2025-10-23 14:13:57.184+00	2025-10-23 14:13:57.143+00
2	News	f	news	\N	2025-10-23 14:13:57.188+00	2025-10-23 14:13:57.147+00
3	Software	f	software	\N	2025-10-23 14:13:57.238+00	2025-10-23 14:13:57.216+00
4	Engineering	f	engineering	\N	2025-10-23 14:13:57.241+00	2025-10-23 14:13:57.219+00
5	Finance	f	finance	\N	2025-10-23 14:13:57.504+00	2025-10-23 14:13:57.485+00
6	Design	f	design	\N	2025-10-23 14:13:57.843+00	2025-10-23 14:13:57.826+00
\.


--
-- Data for Name: categories_breadcrumbs; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.categories_breadcrumbs (_order, _parent_id, id, doc_id, url, label) FROM stdin;
1	1	68fa382548de2f0092cccfb1	1	/technology	Technology
1	2	68fa382548de2f0092cccfb2	2	/news	News
1	3	68fa382548de2f0092cccfb3	3	/software	Software
1	4	68fa382548de2f0092cccfb4	4	/engineering	Engineering
1	5	68fa382548de2f0092cccfb5	5	/finance	Finance
1	6	68fa382548de2f0092cccfb6	6	/design	Design
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.customer (id, customer_name, customer_logo_id, website_url, is_active, updated_at, created_at) FROM stdin;
1	Dipo Star	6	https://dipostar.com/	t	2025-10-27 04:45:21.492+00	2025-10-27 04:45:21.491+00
2	JTS	7	https://www.linkedin.com/company/pt-jet-transport-service-indonesia/about/	t	2025-10-27 05:33:16.442+00	2025-10-27 05:33:06.067+00
3	JNT Cargo	8	https://www.jtcargo.id/	t	2025-10-27 05:36:28.741+00	2025-10-27 05:36:26.316+00
\.


--
-- Data for Name: footer; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.footer (id, updated_at, created_at) FROM stdin;
1	2025-10-23 14:13:55.703+00	2025-10-23 14:13:55.703+00
\.


--
-- Data for Name: footer_nav_items; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.footer_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	68fa382948de2f0092cccff1	custom	\N	/admin	Admin
\.


--
-- Data for Name: footer_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.footer_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: form_submissions; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.form_submissions (id, form_id, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: form_submissions_submission_data; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.form_submissions_submission_data (_order, _parent_id, id, field, value) FROM stdin;
\.


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms (id, title, submit_button_label, confirmation_type, confirmation_message, redirect_url, updated_at, created_at) FROM stdin;
1	Contact Form	Submit	message	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The contact form has been submitted successfully.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	2023-01-12 21:47:41.374+00	2023-01-12 21:47:41.374+00
\.


--
-- Data for Name: forms_blocks_checkbox; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_checkbox (_order, _parent_id, _path, id, name, label, width, required, default_value, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_country; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_country (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_email; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_email (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
2	1	fields	68fa382948de2f0092cccfdf	email	Email	100	t	email
\.


--
-- Data for Name: forms_blocks_message; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_message (_order, _parent_id, _path, id, message, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_number; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_number (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
3	1	fields	68fa382948de2f0092cccfe0	phone	Phone	100	\N	f	phone
\.


--
-- Data for Name: forms_blocks_select; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_select (_order, _parent_id, _path, id, name, label, width, default_value, placeholder, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_select_options; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_select_options (_order, _parent_id, id, label, value) FROM stdin;
\.


--
-- Data for Name: forms_blocks_state; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_state (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_text; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_text (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
1	1	fields	68fa382948de2f0092cccfde	full-name	Full Name	100	\N	t	full-name
\.


--
-- Data for Name: forms_blocks_textarea; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_blocks_textarea (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
4	1	fields	68fa382948de2f0092cccfe1	message	Message	100	\N	t	message
\.


--
-- Data for Name: forms_emails; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.forms_emails (_order, _parent_id, id, email_to, cc, bcc, reply_to, email_from, subject, message) FROM stdin;
1	1	68fa382948de2f0092cccfe2	{{email}}	\N	\N	\N	"Payload" <demo@payloadcms.com>	You've received a new message.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Your contact form submission was successfully received.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}
\.


--
-- Data for Name: gallery; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.gallery (id, title, image_id, description, "order", is_active, updated_at, created_at) FROM stdin;
1	Photo1	10	Deskripsi photo 1	1	t	2025-10-27 22:44:20.503+00	2025-10-27 22:44:20.503+00
\.


--
-- Data for Name: header; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.header (id, updated_at, created_at) FROM stdin;
1	2025-10-23 14:13:55.702+00	2025-10-23 14:13:55.702+00
\.


--
-- Data for Name: header_nav_items; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.header_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	68fa382948de2f0092cccff4	custom	\N	/posts	Posts
2	1	68fa382948de2f0092cccff5	reference	\N	\N	Contact
3	1	68fded297c5486bf197b0da8	reference	\N	\N	Our Partner
4	1	68fded3a7c5486bf197b0daa	reference	\N	\N	Our Team
5	1	68fded127c5486bf197b0da6	reference	\N	\N	Gallery
\.


--
-- Data for Name: header_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.header_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
23	\N	1	navItems.1.link.reference	2	\N
24	\N	1	navItems.2.link.reference	1	\N
25	\N	1	navItems.3.link.reference	1	\N
26	\N	1	navItems.4.link.reference	5	\N
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.media (id, alt, caption, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y, sizes_thumbnail_url, sizes_thumbnail_width, sizes_thumbnail_height, sizes_thumbnail_mime_type, sizes_thumbnail_filesize, sizes_thumbnail_filename, sizes_square_url, sizes_square_width, sizes_square_height, sizes_square_mime_type, sizes_square_filesize, sizes_square_filename, sizes_small_url, sizes_small_width, sizes_small_height, sizes_small_mime_type, sizes_small_filesize, sizes_small_filename, sizes_medium_url, sizes_medium_width, sizes_medium_height, sizes_medium_mime_type, sizes_medium_filesize, sizes_medium_filename, sizes_large_url, sizes_large_width, sizes_large_height, sizes_large_mime_type, sizes_large_filesize, sizes_large_filename, sizes_xlarge_url, sizes_xlarge_width, sizes_xlarge_height, sizes_xlarge_mime_type, sizes_xlarge_filesize, sizes_xlarge_filename, sizes_og_url, sizes_og_width, sizes_og_height, sizes_og_mime_type, sizes_og_filesize, sizes_og_filename) FROM stdin;
1	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-10-23 14:14:00.129+00	2025-10-23 14:14:00.129+00	\N	\N	image-post3.webp	image/webp	14662	1920	1080	50	50	\N	300	169	image/webp	1240	image-post3-300x169.webp	\N	500	500	image/webp	2732	image-post3-500x500.webp	\N	600	338	image/webp	3018	image-post3-600x338.webp	\N	900	506	image/webp	5010	image-post3-900x506.webp	\N	1400	788	image/webp	9070	image-post3-1400x788.webp	\N	1920	1080	image/webp	14662	image-post3-1920x1080.webp	\N	1200	630	image/webp	6950	image-post3-1200x630.webp
2	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-10-23 14:14:00.373+00	2025-10-23 14:14:00.373+00	\N	\N	image-post2.webp	image/webp	22332	1920	1080	50	50	\N	300	169	image/webp	2248	image-post2-300x169.webp	\N	500	500	image/webp	4952	image-post2-500x500.webp	\N	600	338	image/webp	5066	image-post2-600x338.webp	\N	900	506	image/webp	8036	image-post2-900x506.webp	\N	1400	788	image/webp	13880	image-post2-1400x788.webp	\N	1920	1080	image/webp	22332	image-post2-1920x1080.webp	\N	1200	630	image/webp	11010	image-post2-1200x630.webp
3	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-10-23 14:14:00.376+00	2025-10-23 14:14:00.376+00	\N	\N	image-post1.webp	image/webp	15924	1920	1080	50	50	\N	300	169	image/webp	1524	image-post1-300x169.webp	\N	500	500	image/webp	3792	image-post1-500x500.webp	\N	600	338	image/webp	3622	image-post1-600x338.webp	\N	900	506	image/webp	5936	image-post1-900x506.webp	\N	1400	788	image/webp	10210	image-post1-1400x788.webp	\N	1920	1080	image/webp	15924	image-post1-1920x1080.webp	\N	1200	630	image/webp	8114	image-post1-1200x630.webp
5	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-10-23 14:14:00.373+00	2025-10-23 18:02:53.144+00	/api/media/file/image-post2.webp	/api/media/file/image-post2-300x169.webp	image-post2-1.webp	image/webp	21388	1920	1080	50	50	/api/media/file/image-post2-300x169.webp	300	169	image/webp	2246	image-post2-1-300x169.webp	/api/media/file/image-post2-500x500.webp	500	500	image/webp	4834	image-post2-1-500x500.webp	/api/media/file/image-post2-600x338.webp	600	338	image/webp	4982	image-post2-1-600x338.webp	/api/media/file/image-post2-900x506.webp	900	506	image/webp	7998	image-post2-1-900x506.webp	/api/media/file/image-post2-1400x788.webp	1400	788	image/webp	13860	image-post2-1-1400x788.webp	/api/media/file/image-post2-1920x1080.webp	1920	1080	image/webp	21388	image-post2-1-1920x1080.webp	/api/media/file/image-post2-1200x630.webp	1200	630	image/webp	10856	image-post2-1-1200x630.webp
4	Straight metallic shapes with a blue gradient	\N	2025-10-26 10:01:48.766+00	2025-10-23 14:14:00.781+00	/api/media/file/mapIndo.png	/api/media/file/mapIndo-300x249.png	mapIndo-1.png	image/png	134388	1518	1038	50	50	/api/media/file/mapIndo-300x249.png	300	205	image/png	27941	mapIndo-1-300x205.png	\N	500	500	image/png	66985	mapIndo-1-500x500.png	\N	600	410	image/png	64701	mapIndo-1-600x410.png	\N	900	615	image/png	106571	mapIndo-1-900x615.png	\N	1400	957	image/png	191353	mapIndo-1-1400x957.png	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	130803	mapIndo-1-1200x630.png
6	dipostar	\N	2025-10-26 11:46:01.881+00	2025-10-26 11:46:01.881+00	\N	\N	Dipo-Star-Finance.png	image/png	17467	725	276	50	50	\N	300	114	image/png	32306	Dipo-Star-Finance-300x114.png	\N	500	500	image/png	335494	Dipo-Star-Finance-500x500.png	\N	600	228	image/png	157871	Dipo-Star-Finance-600x228.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	jts	\N	2025-10-27 05:30:18.575+00	2025-10-27 05:30:18.573+00	\N	\N	Logo-JTS.png	image/png	9455	521	192	50	50	\N	300	111	image/png	6519	Logo-JTS-300x111.png	\N	500	500	image/png	44024	Logo-JTS-500x500.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	jnt-cargo	\N	2025-10-27 05:35:51.518+00	2025-10-27 05:35:51.518+00	\N	\N	JNT Cargo.png	image/png	4947	467	108	50	50	\N	300	69	image/png	11584	JNT Cargo-300x69.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	door	\N	2025-10-27 14:42:04.316+00	2025-10-27 14:42:04.316+00	\N	\N	welcome-door.jpg	image/jpeg	5885793	3584	5376	50	50	\N	300	450	image/jpeg	28765	welcome-door-300x450.jpg	\N	500	500	image/jpeg	44294	welcome-door-500x500.jpg	\N	600	900	image/jpeg	83785	welcome-door-600x900.jpg	\N	900	1350	image/jpeg	154966	welcome-door-900x1350.jpg	\N	1400	2100	image/jpeg	292981	welcome-door-1400x2100.jpg	\N	1920	2880	image/jpeg	469487	welcome-door-1920x2880.jpg	\N	1200	630	image/jpeg	74629	welcome-door-1200x630.jpg
10	Mobil	\N	2025-10-27 15:16:47.017+00	2025-10-27 15:16:47.016+00	\N	\N	download.jpeg	image/jpeg	11607	300	168	50	50	\N	300	168	image/jpeg	14182	download-300x168.jpg	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	photosample	\N	2025-10-27 15:38:35.847+00	2025-10-27 15:38:35.845+00	\N	\N	Screenshot From 2025-10-26 19-14-19.png	image/png	1112208	1355	895	50	50	\N	300	198	image/png	110176	Screenshot From 2025-10-26 19-14-19-300x198.png	\N	500	500	image/png	404814	Screenshot From 2025-10-26 19-14-19-500x500.png	\N	600	396	image/png	404088	Screenshot From 2025-10-26 19-14-19-600x396.png	\N	900	594	image/png	850332	Screenshot From 2025-10-26 19-14-19-900x594.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	1405262	Screenshot From 2025-10-26 19-14-19-1200x630.png
12	logo	\N	2025-10-27 22:59:18.223+00	2025-10-27 22:59:18.223+00	\N	\N	logoBM.png	image/png	69334	312	357	50	50	\N	300	343	image/png	106986	logoBM-300x343.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages (id, title, hero_type, hero_rich_text, hero_media_id, meta_title, meta_image_id, meta_description, published_at, generate_slug, slug, updated_at, created_at, _status) FROM stdin;
2	Contact	none	\N	\N	\N	\N	\N	\N	f	contact	2025-10-23 14:22:03.156+00	2025-10-23 14:14:01.115+00	published
5	Bung Mekanik	lowImpact	\N	\N	Bung Mekanik | Power Dashboard	12	Bung Mekanik adalah sebuah bengkel customer oriented	2025-10-27 22:57:16.636+00	f	gallery	2025-10-27 23:07:08.517+00	2025-10-27 22:57:07.288+00	published
1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Selamat Datang di Bung Mekanik", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Trusted Partner for Your vehicle ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Home | Bung Mekanik Indonesia	4	Trusted Partner for your Vehicle	2025-10-23 18:00:09.543+00	f	home	2025-10-28 12:35:41.111+00	2025-10-23 14:14:01.111+00	published
\.


--
-- Data for Name: pages_blocks_archive; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", block_name) FROM stdin;
2	1	layout	68fa382948de2f0092cccfed	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	Archive Block
\.


--
-- Data for Name: pages_blocks_content; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages_blocks_content (_order, _parent_id, _path, id, block_name) FROM stdin;
1	5	layout	68fff9bb0a43b50add05a651	Gall
1	1	layout	68fa382948de2f0092cccfeb	Content Block
\.


--
-- Data for Name: pages_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
1	68fa382948de2f0092cccfeb	68fa382948de2f0092cccfe6	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Our Goals", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mantain in ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	Admin	default
2	68fa382948de2f0092cccfeb	68fa382948de2f0092cccfe7	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default
3	68fa382948de2f0092cccfeb	68fa382948de2f0092cccfe8	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default
4	68fa382948de2f0092cccfeb	68fa382948de2f0092cccfe9	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default
1	68fff9bb0a43b50add05a651	68fffab60a43b50add05a655	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "dadasdada", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	t	reference	\N	\N	Coba Galery	outline
\.


--
-- Data for Name: pages_blocks_cta; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages_blocks_cta (_order, _parent_id, _path, id, rich_text, block_name) FROM stdin;
3	1	layout	68fa382948de2f0092cccfef	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Get in Touch with our Team", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Let's make a connection", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	CTA
\.


--
-- Data for Name: pages_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
1	68fa382948de2f0092cccfef	68fa382948de2f0092cccfee	reference	\N	/posts	Sent us an email	default
\.


--
-- Data for Name: pages_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, block_name) FROM stdin;
1	2	layout	68fa382948de2f0092cccff0	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Example contact form:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N
\.


--
-- Data for Name: pages_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages_blocks_media_block (_order, _parent_id, _path, id, media_id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_hero_links; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
1	1	68fa382948de2f0092cccfe3	custom	\N	/posts	All posts	default
2	1	68fa382948de2f0092cccfe4	custom	\N	/contact	Contact	outline
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.pages_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
24	\N	5	layout.0.columns.0.link.reference	5	\N	\N
36	\N	1	layout.0.columns.0.link.reference	\N	3	\N
37	\N	1	layout.0.columns.1.link.reference	\N	3	\N
38	\N	1	layout.2.links.0.link.reference	2	\N	\N
\.


--
-- Data for Name: payload_jobs; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.payload_jobs (id, input, completed_at, total_tried, has_error, error, task_slug, queue, wait_until, processing, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_jobs_log; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.payload_jobs_log (_order, _parent_id, id, executed_at, completed_at, task_slug, task_i_d, input, output, state, error) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, pages_id, posts_id, media_id, categories_id, users_id, redirects_id, forms_id, form_submissions_id, search_id, payload_jobs_id, customer_id, gallery_id) FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	dev	-1	2025-11-01 06:47:20.673+00	2025-10-23 14:13:20.443+00
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
20	collection-customer	{"limit": 10}	2025-10-27 04:43:19.987+00	2025-10-26 12:46:22.003+00
19	collection-customer	{"limit": 10, "editViewType": "default"}	2025-10-27 04:44:08.944+00	2025-10-26 12:46:08.21+00
6	collection-posts	{"editViewType": "default"}	2025-10-23 18:15:51.094+00	2025-10-23 15:56:20.011+00
11	collection-media	{"limit": 10, "columns": [{"active": true, "accessor": "filename"}, {"active": true, "accessor": "alt"}, {"active": true, "accessor": "caption"}, {"active": true, "accessor": "updatedAt"}, {"active": false, "accessor": "id"}, {"active": false, "accessor": "createdAt"}, {"active": false, "accessor": "url"}, {"active": false, "accessor": "thumbnailURL"}, {"active": false, "accessor": "mimeType"}, {"active": false, "accessor": "filesize"}, {"active": true, "accessor": "width"}, {"active": false, "accessor": "height"}, {"active": false, "accessor": "sizes.thumbnail.url"}, {"active": false, "accessor": "sizes.thumbnail.width"}, {"active": false, "accessor": "sizes.thumbnail.height"}, {"active": false, "accessor": "sizes.thumbnail.mimeType"}, {"active": false, "accessor": "sizes.thumbnail.filesize"}, {"active": false, "accessor": "sizes.thumbnail.filename"}, {"active": false, "accessor": "sizes.square.url"}, {"active": false, "accessor": "sizes.square.width"}, {"active": false, "accessor": "sizes.square.height"}, {"active": false, "accessor": "sizes.square.mimeType"}, {"active": false, "accessor": "sizes.square.filesize"}, {"active": false, "accessor": "sizes.square.filename"}, {"active": false, "accessor": "sizes.small.url"}, {"active": false, "accessor": "sizes.small.width"}, {"active": false, "accessor": "sizes.small.height"}, {"active": false, "accessor": "sizes.small.mimeType"}, {"active": false, "accessor": "sizes.small.filesize"}, {"active": false, "accessor": "sizes.small.filename"}, {"active": false, "accessor": "sizes.medium.url"}, {"active": false, "accessor": "sizes.medium.width"}, {"active": false, "accessor": "sizes.medium.height"}, {"active": false, "accessor": "sizes.medium.mimeType"}, {"active": false, "accessor": "sizes.medium.filesize"}, {"active": false, "accessor": "sizes.medium.filename"}, {"active": false, "accessor": "sizes.large.url"}, {"active": false, "accessor": "sizes.large.width"}, {"active": false, "accessor": "sizes.large.height"}, {"active": false, "accessor": "sizes.large.mimeType"}, {"active": false, "accessor": "sizes.large.filesize"}, {"active": false, "accessor": "sizes.large.filename"}, {"active": false, "accessor": "sizes.xlarge.url"}, {"active": false, "accessor": "sizes.xlarge.width"}, {"active": false, "accessor": "sizes.xlarge.height"}, {"active": false, "accessor": "sizes.xlarge.mimeType"}, {"active": false, "accessor": "sizes.xlarge.filesize"}, {"active": false, "accessor": "sizes.xlarge.filename"}, {"active": false, "accessor": "sizes.og.url"}, {"active": false, "accessor": "sizes.og.width"}, {"active": false, "accessor": "sizes.og.height"}, {"active": false, "accessor": "sizes.og.mimeType"}, {"active": false, "accessor": "sizes.og.filesize"}, {"active": false, "accessor": "sizes.og.filename"}], "editViewType": "default"}	2025-10-23 18:20:14.182+00	2025-10-23 17:55:40.945+00
12	global-footer	{"fields": {"navItems": {"collapsed": []}}, "editViewType": "default"}	2025-10-24 02:51:14.326+00	2025-10-23 18:06:37.896+00
7	collection-categories	{"editViewType": "default"}	2025-10-23 15:59:18.101+00	2025-10-23 15:59:14.507+00
21	collection-gallery	{"limit": 10, "editViewType": "default"}	2025-10-27 15:21:06.872+00	2025-10-27 14:40:37.636+00
8	collection-pages	{"limit": 10, "editViewType": "default"}	2025-10-24 02:59:55.533+00	2025-10-23 15:59:39.427+00
10	nav	{"open": true, "groups": {"Globals": {"open": true}, "Collections": {"open": true}}}	2025-10-26 09:44:09.07+00	2025-10-23 16:33:37.651+00
23	collection-pages-5	{"fields": {"layout": {"collapsed": []}, "_index-1": {"tabIndex": 1}, "hero.links": {"collapsed": []}, "layout.0.columns": {"collapsed": []}}}	2025-10-27 23:06:11.769+00	2025-10-27 22:57:18.841+00
18	global-header	{"fields": {"navItems": {"collapsed": ["68fa382948de2f0092cccff4", "68fa382948de2f0092cccff5", "68fded127c5486bf197b0da6", "68fded297c5486bf197b0da8", "68fded3a7c5486bf197b0daa"]}}, "editViewType": "default"}	2025-10-28 11:52:31.111+00	2025-10-26 09:42:35.391+00
13	collection-users	{"editViewType": "default"}	2025-10-23 18:07:53.447+00	2025-10-23 18:07:48.706+00
14	collection-forms	{}	2025-10-23 18:07:58.739+00	2025-10-23 18:07:58.739+00
15	collection-form-submissions	{}	2025-10-23 18:08:00.848+00	2025-10-23 18:08:00.848+00
16	collection-search	{}	2025-10-23 18:08:02.786+00	2025-10-23 18:08:02.786+00
9	collection-pages-1	{"fields": {"layout": {"collapsed": []}, "_index-1": {"tabIndex": 1}, "hero.links": {"collapsed": []}, "layout.2.links": {"collapsed": []}, "layout.0.columns": {"collapsed": []}, "layout.1.columns": {"collapsed": ["68fa382948de2f0092cccfe5", "68fa382948de2f0092cccfe6", "68fa382948de2f0092cccfe7", "68fa382948de2f0092cccfe8", "68fa382948de2f0092cccfe9", "68fa382948de2f0092cccfea"]}}}	2025-10-28 12:10:56.379+00	2025-10-23 16:00:37.19+00
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
129	\N	20	user	1
130	\N	19	user	1
72	\N	6	user	1
74	\N	11	user	1
75	\N	12	user	1
15	\N	7	user	1
137	\N	21	user	1
85	\N	8	user	1
90	\N	10	user	1
159	\N	23	user	1
168	\N	18	user	1
59	\N	13	user	1
60	\N	14	user	1
61	\N	15	user	1
62	\N	16	user	1
179	\N	9	user	1
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.posts (id, title, hero_image_id, content, meta_title, meta_image_id, meta_description, published_at, generate_slug, slug, updated_at, created_at, _status) FROM stdin;
1	Digital Horizons: A Glimpse into Tomorrow	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfcb", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfcc", "code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfcd", "media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfce", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	3	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2025-10-23 14:14:00.795+00	f	digital-horizons	2025-10-23 14:14:00.903+00	2025-10-23 14:14:00.797+00	published
2	Global Gaze: Beyond the Headlines	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfd5", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfd6", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382848de2f0092cccfd7", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	2	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-10-23 14:14:00.834+00	f	global-gaze	2025-10-23 14:14:00.968+00	2025-10-23 14:14:00.836+00	published
3	Dollar and Sense: The Financial Forecast	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"id": "68fa382948de2f0092cccfdb", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382948de2f0092cccfdc", "media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "68fa382948de2f0092cccfdd", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	1	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-10-23 14:14:00.863+00	f	dollar-and-sense-the-financial-forecast	2025-10-23 14:14:01.028+00	2025-10-23 14:14:00.865+00	published
\.


--
-- Data for Name: posts_populated_authors; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.posts_populated_authors (_order, _parent_id, id, name) FROM stdin;
\.


--
-- Data for Name: posts_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.posts_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
4	1	1	relatedPosts	2	\N	\N
5	2	1	relatedPosts	3	\N	\N
6	1	1	authors	\N	\N	2
7	1	2	relatedPosts	1	\N	\N
8	2	2	relatedPosts	3	\N	\N
9	1	2	authors	\N	\N	2
10	1	3	relatedPosts	1	\N	\N
11	2	3	relatedPosts	2	\N	\N
12	1	3	authors	\N	\N	2
\.


--
-- Data for Name: redirects; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.redirects (id, "from", to_type, to_url, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: redirects_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.redirects_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: search; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.search (id, title, priority, slug, meta_title, meta_description, meta_image_id, updated_at, created_at) FROM stdin;
1	Digital Horizons: A Glimpse into Tomorrow	0	digital-horizons	Digital Horizons: A Glimpse into Tomorrow	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	3	2025-10-23 14:14:00.946+00	2025-10-23 14:14:00.823+00
2	Global Gaze: Beyond the Headlines	0	global-gaze	Global Gaze: Beyond the Headlines	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2	2025-10-23 14:14:01.007+00	2025-10-23 14:14:00.855+00
3	Dollar and Sense: The Financial Forecast	0	dollar-and-sense-the-financial-forecast	Dollar and Sense: The Financial Forecast	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	1	2025-10-23 14:14:01.067+00	2025-10-23 14:14:00.88+00
\.


--
-- Data for Name: search_categories; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.search_categories (_order, _parent_id, id, relation_to, category_i_d, title) FROM stdin;
\.


--
-- Data for Name: search_rels; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.search_rels (id, "order", parent_id, path, posts_id) FROM stdin;
4	\N	1	doc	1
5	\N	2	doc	2
6	\N	3	doc	3
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.users (id, name, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until) FROM stdin;
2	Demo Author	2025-10-23 14:13:57.384+00	2025-10-23 14:13:57.384+00	demo-author@example.com	\N	\N	6f8bd2c7eb752df1a14bbea66ea5c4a4170fb72c1e27cf81c0338dc139b3eaaa	736afe29c278f45772ab037119965b9037ec5afff5c6180fa258e745d44e5e567bd1df48bd4707f1106fde043ab33008b612559dcb8d0db27dac53df5709fa4fd1b5efc6fb056e3254dab7ee56302388dcecb1388965a06a8a68a5a5afdbcbb72230428d941a76842997ce772184c951e6d69b56c0907143efe3ec27b5df5e9c6165158e6c3d4636b276d6b5a543ae22925b221bdfb055257d0c5ab53dda1baf3f95c47595e4deef5b3fcc1760ebe5ee8a33d4e268584e3b218eab2240e86c7ba8a1a1bc5d57e936bcefd72edcadabf419fb432e569e80c2a925998fea404eae37be4398cd0684f0d1c921ce1d8d466ef564861bc1b23e721e90530503ed7c7874ae78dbe1e858a4821057032e7d13567368dcad7f1fcf1debfb00d0e813633e84babca7e0b752e48a698cf392f9533f1b3bcb36e2ff2ac97a6c0fd9e3b60d0c93dd2badb5594bc351a949567875d92312c8c5e825c8ad75a71355f58d83b8106c0976d6b0db3dca6b095498b02e14fdffa06501f852ea02f8c726f83847bddfd208fa0a146c35d2cacbc6086f8a039b0640bbab85622340b8921e6338f7bd97b1db6c7a45a2ca92d897d1f62b9ca46c839aff02f5a0ebb2e7763256960155afb9d2f6d2e08e56c061f1f4f40c71671a5a77d60635a917f34dd24fae7d00414763d2dcb5f1dc1712e3cf07ea3ca06d7b58e39485aa827c61c9a8b6433d4d5309	0	\N
1	donald	2025-11-01 06:48:08.17+00	2025-10-23 14:13:51.39+00	rolies.donald@gmail.com	\N	\N	002fd1ff51fdd7ccc8124c20cce61bb7cff5fafd2a7810b1031c76534a3a9652	1d715c62acb3f10a35dd3fe8025dd3468e6bd29926f6d61d314192a8438825469aa4565a88302952b53471d1d3adc2d57a5c77b029fc1de702afb59428c0d213313f119be23a2548b329a6e45efd9aed3f60d9aa9dc0589fb095c68a3886812f5bd68a66c7da39ae5cbe53d0c03d5e03dc41b78f4ecc154d47552bd8a9c271f37205d41ce43619ccc6fc13e0a54b4260654ea6cb3a345629482d3ad0587abf0fde57e7caafaac4bb4d867d5d580931a6edbe76817f97e95aafe5be276b4056344a5a23d3954d847e110c0e294718b0792a7bc5320283457992fe110f9944f6f7c0d4ed0e9a73b019a485722f955411528b0b8c499a404de067bf918094105c51cffe74480d89c17fbe2a5f043fee9f06cac31bbcb92ff68ac36ca93798f36a8c8ca164c752d9cf1ec4f0bc506f617c28088b1e1c96bd09046911ce041fdba34910eeda3e25eeffbeab3be76af36167316644da2b066a644351900a3179c0e6435d7478ec096805b9be7c51411530eb73b4bdde78b28334533fd592738f17c902f415abc677696a64b20da32df5e2136c9cbe0f6ef27c36ee19830fd511e9af158f7a507ff29edb5eddbc2ec67c03829c6f70df98808dcd7354a925d464fe6b90f84f483427efc5a9d70ddab3530382fd11d59e0a3422774128a63fc86751f5cf5123a482b8751ea8def9e775f0c1210b84c264eb0d43fd80b891ce511600157e	0	\N
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: bmadmin
--

COPY public.users_sessions (_order, _parent_id, id, created_at, expires_at) FROM stdin;
1	1	eaaf7ea3-f250-48bd-9412-2d7b8b5fa189	2025-11-01 06:48:08.17+00	2025-11-01 08:48:08.17+00
\.


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_blocks_archive_id_seq', 263, true);


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_columns_id_seq', 1441, true);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_id_seq', 293, true);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_id_seq', 263, true);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_links_id_seq', 263, true);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_blocks_form_block_id_seq', 9, true);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_blocks_media_block_id_seq', 200, true);


--
-- Name: _pages_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_id_seq', 57, true);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_rels_id_seq', 552, true);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._pages_v_version_hero_links_id_seq', 527, true);


--
-- Name: _posts_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._posts_v_id_seq', 7, true);


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._posts_v_rels_id_seq', 12, true);


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public._posts_v_version_populated_authors_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.categories_id_seq', 6, true);


--
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.customer_id_seq', 3, true);


--
-- Name: footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.footer_id_seq', 1, true);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.footer_rels_id_seq', 1, false);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.form_submissions_id_seq', 1, false);


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.forms_id_seq', 1, true);


--
-- Name: gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.gallery_id_seq', 1, true);


--
-- Name: header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.header_id_seq', 1, true);


--
-- Name: header_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.header_rels_id_seq', 26, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.media_id_seq', 12, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.pages_id_seq', 5, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 38, true);


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.payload_jobs_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 60, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 111, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 1, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 23, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 179, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.posts_id_seq', 4, true);


--
-- Name: posts_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.posts_rels_id_seq', 12, true);


--
-- Name: redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.redirects_id_seq', 1, false);


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.redirects_rels_id_seq', 1, false);


--
-- Name: search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.search_id_seq', 3, true);


--
-- Name: search_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.search_rels_id_seq', 6, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bmadmin
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v _pages_v_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_rels _pages_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_pkey PRIMARY KEY (id);


--
-- Name: _posts_v _posts_v_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_rels _posts_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: categories_breadcrumbs categories_breadcrumbs_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: footer_nav_items footer_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_pkey PRIMARY KEY (id);


--
-- Name: footer footer_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.footer
    ADD CONSTRAINT footer_pkey PRIMARY KEY (id);


--
-- Name: footer_rels footer_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pkey PRIMARY KEY (id);


--
-- Name: form_submissions form_submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_pkey PRIMARY KEY (id);


--
-- Name: form_submissions_submission_data form_submissions_submission_data_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_country forms_blocks_country_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_email forms_blocks_email_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_message forms_blocks_message_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_number forms_blocks_number_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select_options forms_blocks_select_options_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select forms_blocks_select_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_state forms_blocks_state_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_text forms_blocks_text_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_textarea forms_blocks_textarea_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_pkey PRIMARY KEY (id);


--
-- Name: forms_emails forms_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_pkey PRIMARY KEY (id);


--
-- Name: forms forms_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (id);


--
-- Name: gallery gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.gallery
    ADD CONSTRAINT gallery_pkey PRIMARY KEY (id);


--
-- Name: header_nav_items header_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_pkey PRIMARY KEY (id);


--
-- Name: header header_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.header
    ADD CONSTRAINT header_pkey PRIMARY KEY (id);


--
-- Name: header_rels header_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_archive pages_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content pages_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta pages_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_form_block pages_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_block pages_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: pages_hero_links pages_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_rels pages_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs_log payload_jobs_log_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs payload_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_jobs
    ADD CONSTRAINT payload_jobs_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts_populated_authors posts_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: posts_rels posts_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_pkey PRIMARY KEY (id);


--
-- Name: redirects redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.redirects
    ADD CONSTRAINT redirects_pkey PRIMARY KEY (id);


--
-- Name: redirects_rels redirects_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pkey PRIMARY KEY (id);


--
-- Name: search_categories search_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.search_categories
    ADD CONSTRAINT search_categories_pkey PRIMARY KEY (id);


--
-- Name: search search_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_pkey PRIMARY KEY (id);


--
-- Name: search_rels search_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_sessions users_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_autosave_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_autosave_idx ON public._pages_v USING btree (autosave);


--
-- Name: _pages_v_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_archive_order_idx ON public._pages_v_blocks_archive USING btree (_order);


--
-- Name: _pages_v_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_archive_parent_id_idx ON public._pages_v_blocks_archive USING btree (_parent_id);


--
-- Name: _pages_v_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_archive_path_idx ON public._pages_v_blocks_archive USING btree (_path);


--
-- Name: _pages_v_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_content_columns_order_idx ON public._pages_v_blocks_content_columns USING btree (_order);


--
-- Name: _pages_v_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_content_columns_parent_id_idx ON public._pages_v_blocks_content_columns USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_content_order_idx ON public._pages_v_blocks_content USING btree (_order);


--
-- Name: _pages_v_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_content_parent_id_idx ON public._pages_v_blocks_content USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_content_path_idx ON public._pages_v_blocks_content USING btree (_path);


--
-- Name: _pages_v_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_cta_links_order_idx ON public._pages_v_blocks_cta_links USING btree (_order);


--
-- Name: _pages_v_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_cta_links_parent_id_idx ON public._pages_v_blocks_cta_links USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_cta_order_idx ON public._pages_v_blocks_cta USING btree (_order);


--
-- Name: _pages_v_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_cta_parent_id_idx ON public._pages_v_blocks_cta USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_cta_path_idx ON public._pages_v_blocks_cta USING btree (_path);


--
-- Name: _pages_v_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_form_block_form_idx ON public._pages_v_blocks_form_block USING btree (form_id);


--
-- Name: _pages_v_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_form_block_order_idx ON public._pages_v_blocks_form_block USING btree (_order);


--
-- Name: _pages_v_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_form_block_parent_id_idx ON public._pages_v_blocks_form_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_form_block_path_idx ON public._pages_v_blocks_form_block USING btree (_path);


--
-- Name: _pages_v_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_media_block_media_idx ON public._pages_v_blocks_media_block USING btree (media_id);


--
-- Name: _pages_v_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_media_block_order_idx ON public._pages_v_blocks_media_block USING btree (_order);


--
-- Name: _pages_v_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_media_block_parent_id_idx ON public._pages_v_blocks_media_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_blocks_media_block_path_idx ON public._pages_v_blocks_media_block USING btree (_path);


--
-- Name: _pages_v_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_created_at_idx ON public._pages_v USING btree (created_at);


--
-- Name: _pages_v_latest_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_latest_idx ON public._pages_v USING btree (latest);


--
-- Name: _pages_v_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_parent_idx ON public._pages_v USING btree (parent_id);


--
-- Name: _pages_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_rels_categories_id_idx ON public._pages_v_rels USING btree (categories_id);


--
-- Name: _pages_v_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_rels_order_idx ON public._pages_v_rels USING btree ("order");


--
-- Name: _pages_v_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_rels_pages_id_idx ON public._pages_v_rels USING btree (pages_id);


--
-- Name: _pages_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_rels_parent_idx ON public._pages_v_rels USING btree (parent_id);


--
-- Name: _pages_v_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_rels_path_idx ON public._pages_v_rels USING btree (path);


--
-- Name: _pages_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_rels_posts_id_idx ON public._pages_v_rels USING btree (posts_id);


--
-- Name: _pages_v_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_updated_at_idx ON public._pages_v USING btree (updated_at);


--
-- Name: _pages_v_version_hero_links_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_version_hero_links_order_idx ON public._pages_v_version_hero_links USING btree (_order);


--
-- Name: _pages_v_version_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_version_hero_links_parent_id_idx ON public._pages_v_version_hero_links USING btree (_parent_id);


--
-- Name: _pages_v_version_hero_version_hero_media_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_version_hero_version_hero_media_idx ON public._pages_v USING btree (version_hero_media_id);


--
-- Name: _pages_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_version_meta_version_meta_image_idx ON public._pages_v USING btree (version_meta_image_id);


--
-- Name: _pages_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_version_version__status_idx ON public._pages_v USING btree (version__status);


--
-- Name: _pages_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_version_version_created_at_idx ON public._pages_v USING btree (version_created_at);


--
-- Name: _pages_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_version_version_slug_idx ON public._pages_v USING btree (version_slug);


--
-- Name: _pages_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _pages_v_version_version_updated_at_idx ON public._pages_v USING btree (version_updated_at);


--
-- Name: _posts_v_autosave_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_autosave_idx ON public._posts_v USING btree (autosave);


--
-- Name: _posts_v_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_created_at_idx ON public._posts_v USING btree (created_at);


--
-- Name: _posts_v_latest_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_latest_idx ON public._posts_v USING btree (latest);


--
-- Name: _posts_v_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_parent_idx ON public._posts_v USING btree (parent_id);


--
-- Name: _posts_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_rels_categories_id_idx ON public._posts_v_rels USING btree (categories_id);


--
-- Name: _posts_v_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_rels_order_idx ON public._posts_v_rels USING btree ("order");


--
-- Name: _posts_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_rels_parent_idx ON public._posts_v_rels USING btree (parent_id);


--
-- Name: _posts_v_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_rels_path_idx ON public._posts_v_rels USING btree (path);


--
-- Name: _posts_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_rels_posts_id_idx ON public._posts_v_rels USING btree (posts_id);


--
-- Name: _posts_v_rels_users_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_rels_users_id_idx ON public._posts_v_rels USING btree (users_id);


--
-- Name: _posts_v_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_updated_at_idx ON public._posts_v USING btree (updated_at);


--
-- Name: _posts_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_version_meta_version_meta_image_idx ON public._posts_v USING btree (version_meta_image_id);


--
-- Name: _posts_v_version_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_version_populated_authors_order_idx ON public._posts_v_version_populated_authors USING btree (_order);


--
-- Name: _posts_v_version_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_version_populated_authors_parent_id_idx ON public._posts_v_version_populated_authors USING btree (_parent_id);


--
-- Name: _posts_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_version_version__status_idx ON public._posts_v USING btree (version__status);


--
-- Name: _posts_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_version_version_created_at_idx ON public._posts_v USING btree (version_created_at);


--
-- Name: _posts_v_version_version_hero_image_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_version_version_hero_image_idx ON public._posts_v USING btree (version_hero_image_id);


--
-- Name: _posts_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_version_version_slug_idx ON public._posts_v USING btree (version_slug);


--
-- Name: _posts_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX _posts_v_version_version_updated_at_idx ON public._posts_v USING btree (version_updated_at);


--
-- Name: categories_breadcrumbs_doc_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX categories_breadcrumbs_doc_idx ON public.categories_breadcrumbs USING btree (doc_id);


--
-- Name: categories_breadcrumbs_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX categories_breadcrumbs_order_idx ON public.categories_breadcrumbs USING btree (_order);


--
-- Name: categories_breadcrumbs_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX categories_breadcrumbs_parent_id_idx ON public.categories_breadcrumbs USING btree (_parent_id);


--
-- Name: categories_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX categories_created_at_idx ON public.categories USING btree (created_at);


--
-- Name: categories_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX categories_parent_idx ON public.categories USING btree (parent_id);


--
-- Name: categories_slug_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE UNIQUE INDEX categories_slug_idx ON public.categories USING btree (slug);


--
-- Name: categories_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX categories_updated_at_idx ON public.categories USING btree (updated_at);


--
-- Name: customer_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX customer_created_at_idx ON public.customer USING btree (created_at);


--
-- Name: customer_customer_logo_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX customer_customer_logo_idx ON public.customer USING btree (customer_logo_id);


--
-- Name: customer_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX customer_updated_at_idx ON public.customer USING btree (updated_at);


--
-- Name: footer_nav_items_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX footer_nav_items_order_idx ON public.footer_nav_items USING btree (_order);


--
-- Name: footer_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX footer_nav_items_parent_id_idx ON public.footer_nav_items USING btree (_parent_id);


--
-- Name: footer_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX footer_rels_order_idx ON public.footer_rels USING btree ("order");


--
-- Name: footer_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX footer_rels_pages_id_idx ON public.footer_rels USING btree (pages_id);


--
-- Name: footer_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX footer_rels_parent_idx ON public.footer_rels USING btree (parent_id);


--
-- Name: footer_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX footer_rels_path_idx ON public.footer_rels USING btree (path);


--
-- Name: footer_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX footer_rels_posts_id_idx ON public.footer_rels USING btree (posts_id);


--
-- Name: form_submissions_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX form_submissions_created_at_idx ON public.form_submissions USING btree (created_at);


--
-- Name: form_submissions_form_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX form_submissions_form_idx ON public.form_submissions USING btree (form_id);


--
-- Name: form_submissions_submission_data_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX form_submissions_submission_data_order_idx ON public.form_submissions_submission_data USING btree (_order);


--
-- Name: form_submissions_submission_data_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX form_submissions_submission_data_parent_id_idx ON public.form_submissions_submission_data USING btree (_parent_id);


--
-- Name: form_submissions_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX form_submissions_updated_at_idx ON public.form_submissions USING btree (updated_at);


--
-- Name: forms_blocks_checkbox_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_checkbox_order_idx ON public.forms_blocks_checkbox USING btree (_order);


--
-- Name: forms_blocks_checkbox_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_checkbox_parent_id_idx ON public.forms_blocks_checkbox USING btree (_parent_id);


--
-- Name: forms_blocks_checkbox_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_checkbox_path_idx ON public.forms_blocks_checkbox USING btree (_path);


--
-- Name: forms_blocks_country_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_country_order_idx ON public.forms_blocks_country USING btree (_order);


--
-- Name: forms_blocks_country_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_country_parent_id_idx ON public.forms_blocks_country USING btree (_parent_id);


--
-- Name: forms_blocks_country_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_country_path_idx ON public.forms_blocks_country USING btree (_path);


--
-- Name: forms_blocks_email_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_email_order_idx ON public.forms_blocks_email USING btree (_order);


--
-- Name: forms_blocks_email_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_email_parent_id_idx ON public.forms_blocks_email USING btree (_parent_id);


--
-- Name: forms_blocks_email_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_email_path_idx ON public.forms_blocks_email USING btree (_path);


--
-- Name: forms_blocks_message_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_message_order_idx ON public.forms_blocks_message USING btree (_order);


--
-- Name: forms_blocks_message_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_message_parent_id_idx ON public.forms_blocks_message USING btree (_parent_id);


--
-- Name: forms_blocks_message_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_message_path_idx ON public.forms_blocks_message USING btree (_path);


--
-- Name: forms_blocks_number_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_number_order_idx ON public.forms_blocks_number USING btree (_order);


--
-- Name: forms_blocks_number_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_number_parent_id_idx ON public.forms_blocks_number USING btree (_parent_id);


--
-- Name: forms_blocks_number_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_number_path_idx ON public.forms_blocks_number USING btree (_path);


--
-- Name: forms_blocks_select_options_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_select_options_order_idx ON public.forms_blocks_select_options USING btree (_order);


--
-- Name: forms_blocks_select_options_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_select_options_parent_id_idx ON public.forms_blocks_select_options USING btree (_parent_id);


--
-- Name: forms_blocks_select_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_select_order_idx ON public.forms_blocks_select USING btree (_order);


--
-- Name: forms_blocks_select_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_select_parent_id_idx ON public.forms_blocks_select USING btree (_parent_id);


--
-- Name: forms_blocks_select_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_select_path_idx ON public.forms_blocks_select USING btree (_path);


--
-- Name: forms_blocks_state_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_state_order_idx ON public.forms_blocks_state USING btree (_order);


--
-- Name: forms_blocks_state_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_state_parent_id_idx ON public.forms_blocks_state USING btree (_parent_id);


--
-- Name: forms_blocks_state_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_state_path_idx ON public.forms_blocks_state USING btree (_path);


--
-- Name: forms_blocks_text_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_text_order_idx ON public.forms_blocks_text USING btree (_order);


--
-- Name: forms_blocks_text_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_text_parent_id_idx ON public.forms_blocks_text USING btree (_parent_id);


--
-- Name: forms_blocks_text_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_text_path_idx ON public.forms_blocks_text USING btree (_path);


--
-- Name: forms_blocks_textarea_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_textarea_order_idx ON public.forms_blocks_textarea USING btree (_order);


--
-- Name: forms_blocks_textarea_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_textarea_parent_id_idx ON public.forms_blocks_textarea USING btree (_parent_id);


--
-- Name: forms_blocks_textarea_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_blocks_textarea_path_idx ON public.forms_blocks_textarea USING btree (_path);


--
-- Name: forms_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_created_at_idx ON public.forms USING btree (created_at);


--
-- Name: forms_emails_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_emails_order_idx ON public.forms_emails USING btree (_order);


--
-- Name: forms_emails_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_emails_parent_id_idx ON public.forms_emails USING btree (_parent_id);


--
-- Name: forms_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX forms_updated_at_idx ON public.forms USING btree (updated_at);


--
-- Name: gallery_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX gallery_created_at_idx ON public.gallery USING btree (created_at);


--
-- Name: gallery_image_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX gallery_image_idx ON public.gallery USING btree (image_id);


--
-- Name: gallery_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX gallery_updated_at_idx ON public.gallery USING btree (updated_at);


--
-- Name: header_nav_items_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX header_nav_items_order_idx ON public.header_nav_items USING btree (_order);


--
-- Name: header_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX header_nav_items_parent_id_idx ON public.header_nav_items USING btree (_parent_id);


--
-- Name: header_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX header_rels_order_idx ON public.header_rels USING btree ("order");


--
-- Name: header_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX header_rels_pages_id_idx ON public.header_rels USING btree (pages_id);


--
-- Name: header_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX header_rels_parent_idx ON public.header_rels USING btree (parent_id);


--
-- Name: header_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX header_rels_path_idx ON public.header_rels USING btree (path);


--
-- Name: header_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX header_rels_posts_id_idx ON public.header_rels USING btree (posts_id);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_sizes_large_sizes_large_filename_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX media_sizes_large_sizes_large_filename_idx ON public.media USING btree (sizes_large_filename);


--
-- Name: media_sizes_medium_sizes_medium_filename_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX media_sizes_medium_sizes_medium_filename_idx ON public.media USING btree (sizes_medium_filename);


--
-- Name: media_sizes_og_sizes_og_filename_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX media_sizes_og_sizes_og_filename_idx ON public.media USING btree (sizes_og_filename);


--
-- Name: media_sizes_small_sizes_small_filename_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX media_sizes_small_sizes_small_filename_idx ON public.media USING btree (sizes_small_filename);


--
-- Name: media_sizes_square_sizes_square_filename_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX media_sizes_square_sizes_square_filename_idx ON public.media USING btree (sizes_square_filename);


--
-- Name: media_sizes_thumbnail_sizes_thumbnail_filename_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX media_sizes_thumbnail_sizes_thumbnail_filename_idx ON public.media USING btree (sizes_thumbnail_filename);


--
-- Name: media_sizes_xlarge_sizes_xlarge_filename_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX media_sizes_xlarge_sizes_xlarge_filename_idx ON public.media USING btree (sizes_xlarge_filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: pages__status_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages__status_idx ON public.pages USING btree (_status);


--
-- Name: pages_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_archive_order_idx ON public.pages_blocks_archive USING btree (_order);


--
-- Name: pages_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_archive_parent_id_idx ON public.pages_blocks_archive USING btree (_parent_id);


--
-- Name: pages_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_archive_path_idx ON public.pages_blocks_archive USING btree (_path);


--
-- Name: pages_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_content_columns_order_idx ON public.pages_blocks_content_columns USING btree (_order);


--
-- Name: pages_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_content_columns_parent_id_idx ON public.pages_blocks_content_columns USING btree (_parent_id);


--
-- Name: pages_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_content_order_idx ON public.pages_blocks_content USING btree (_order);


--
-- Name: pages_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_content_parent_id_idx ON public.pages_blocks_content USING btree (_parent_id);


--
-- Name: pages_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_content_path_idx ON public.pages_blocks_content USING btree (_path);


--
-- Name: pages_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_cta_links_order_idx ON public.pages_blocks_cta_links USING btree (_order);


--
-- Name: pages_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_cta_links_parent_id_idx ON public.pages_blocks_cta_links USING btree (_parent_id);


--
-- Name: pages_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_cta_order_idx ON public.pages_blocks_cta USING btree (_order);


--
-- Name: pages_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_cta_parent_id_idx ON public.pages_blocks_cta USING btree (_parent_id);


--
-- Name: pages_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_cta_path_idx ON public.pages_blocks_cta USING btree (_path);


--
-- Name: pages_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_form_block_form_idx ON public.pages_blocks_form_block USING btree (form_id);


--
-- Name: pages_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_form_block_order_idx ON public.pages_blocks_form_block USING btree (_order);


--
-- Name: pages_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_form_block_parent_id_idx ON public.pages_blocks_form_block USING btree (_parent_id);


--
-- Name: pages_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_form_block_path_idx ON public.pages_blocks_form_block USING btree (_path);


--
-- Name: pages_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_media_block_media_idx ON public.pages_blocks_media_block USING btree (media_id);


--
-- Name: pages_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_media_block_order_idx ON public.pages_blocks_media_block USING btree (_order);


--
-- Name: pages_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_media_block_parent_id_idx ON public.pages_blocks_media_block USING btree (_parent_id);


--
-- Name: pages_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_blocks_media_block_path_idx ON public.pages_blocks_media_block USING btree (_path);


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_created_at_idx ON public.pages USING btree (created_at);


--
-- Name: pages_hero_hero_media_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_hero_hero_media_idx ON public.pages USING btree (hero_media_id);


--
-- Name: pages_hero_links_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_hero_links_order_idx ON public.pages_hero_links USING btree (_order);


--
-- Name: pages_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_hero_links_parent_id_idx ON public.pages_hero_links USING btree (_parent_id);


--
-- Name: pages_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_meta_meta_image_idx ON public.pages USING btree (meta_image_id);


--
-- Name: pages_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_rels_categories_id_idx ON public.pages_rels USING btree (categories_id);


--
-- Name: pages_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_rels_order_idx ON public.pages_rels USING btree ("order");


--
-- Name: pages_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_rels_pages_id_idx ON public.pages_rels USING btree (pages_id);


--
-- Name: pages_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_rels_parent_idx ON public.pages_rels USING btree (parent_id);


--
-- Name: pages_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_rels_path_idx ON public.pages_rels USING btree (path);


--
-- Name: pages_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_rels_posts_id_idx ON public.pages_rels USING btree (posts_id);


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE UNIQUE INDEX pages_slug_idx ON public.pages USING btree (slug);


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX pages_updated_at_idx ON public.pages USING btree (updated_at);


--
-- Name: payload_jobs_completed_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_completed_at_idx ON public.payload_jobs USING btree (completed_at);


--
-- Name: payload_jobs_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_created_at_idx ON public.payload_jobs USING btree (created_at);


--
-- Name: payload_jobs_has_error_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_has_error_idx ON public.payload_jobs USING btree (has_error);


--
-- Name: payload_jobs_log_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_log_order_idx ON public.payload_jobs_log USING btree (_order);


--
-- Name: payload_jobs_log_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_log_parent_id_idx ON public.payload_jobs_log USING btree (_parent_id);


--
-- Name: payload_jobs_processing_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_processing_idx ON public.payload_jobs USING btree (processing);


--
-- Name: payload_jobs_queue_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_queue_idx ON public.payload_jobs USING btree (queue);


--
-- Name: payload_jobs_task_slug_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_task_slug_idx ON public.payload_jobs USING btree (task_slug);


--
-- Name: payload_jobs_total_tried_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_total_tried_idx ON public.payload_jobs USING btree (total_tried);


--
-- Name: payload_jobs_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_updated_at_idx ON public.payload_jobs USING btree (updated_at);


--
-- Name: payload_jobs_wait_until_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_jobs_wait_until_idx ON public.payload_jobs USING btree (wait_until);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_categories_id_idx ON public.payload_locked_documents_rels USING btree (categories_id);


--
-- Name: payload_locked_documents_rels_customer_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_customer_id_idx ON public.payload_locked_documents_rels USING btree (customer_id);


--
-- Name: payload_locked_documents_rels_form_submissions_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_form_submissions_id_idx ON public.payload_locked_documents_rels USING btree (form_submissions_id);


--
-- Name: payload_locked_documents_rels_forms_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_forms_id_idx ON public.payload_locked_documents_rels USING btree (forms_id);


--
-- Name: payload_locked_documents_rels_gallery_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_gallery_id_idx ON public.payload_locked_documents_rels USING btree (gallery_id);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_pages_id_idx ON public.payload_locked_documents_rels USING btree (pages_id);


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_payload_jobs_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_payload_jobs_id_idx ON public.payload_locked_documents_rels USING btree (payload_jobs_id);


--
-- Name: payload_locked_documents_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_posts_id_idx ON public.payload_locked_documents_rels USING btree (posts_id);


--
-- Name: payload_locked_documents_rels_redirects_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_redirects_id_idx ON public.payload_locked_documents_rels USING btree (redirects_id);


--
-- Name: payload_locked_documents_rels_search_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_search_id_idx ON public.payload_locked_documents_rels USING btree (search_id);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: posts__status_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts__status_idx ON public.posts USING btree (_status);


--
-- Name: posts_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_created_at_idx ON public.posts USING btree (created_at);


--
-- Name: posts_hero_image_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_hero_image_idx ON public.posts USING btree (hero_image_id);


--
-- Name: posts_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_meta_meta_image_idx ON public.posts USING btree (meta_image_id);


--
-- Name: posts_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_populated_authors_order_idx ON public.posts_populated_authors USING btree (_order);


--
-- Name: posts_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_populated_authors_parent_id_idx ON public.posts_populated_authors USING btree (_parent_id);


--
-- Name: posts_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_rels_categories_id_idx ON public.posts_rels USING btree (categories_id);


--
-- Name: posts_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_rels_order_idx ON public.posts_rels USING btree ("order");


--
-- Name: posts_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_rels_parent_idx ON public.posts_rels USING btree (parent_id);


--
-- Name: posts_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_rels_path_idx ON public.posts_rels USING btree (path);


--
-- Name: posts_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_rels_posts_id_idx ON public.posts_rels USING btree (posts_id);


--
-- Name: posts_rels_users_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_rels_users_id_idx ON public.posts_rels USING btree (users_id);


--
-- Name: posts_slug_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE UNIQUE INDEX posts_slug_idx ON public.posts USING btree (slug);


--
-- Name: posts_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX posts_updated_at_idx ON public.posts USING btree (updated_at);


--
-- Name: redirects_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX redirects_created_at_idx ON public.redirects USING btree (created_at);


--
-- Name: redirects_from_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE UNIQUE INDEX redirects_from_idx ON public.redirects USING btree ("from");


--
-- Name: redirects_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX redirects_rels_order_idx ON public.redirects_rels USING btree ("order");


--
-- Name: redirects_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX redirects_rels_pages_id_idx ON public.redirects_rels USING btree (pages_id);


--
-- Name: redirects_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX redirects_rels_parent_idx ON public.redirects_rels USING btree (parent_id);


--
-- Name: redirects_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX redirects_rels_path_idx ON public.redirects_rels USING btree (path);


--
-- Name: redirects_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX redirects_rels_posts_id_idx ON public.redirects_rels USING btree (posts_id);


--
-- Name: redirects_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX redirects_updated_at_idx ON public.redirects USING btree (updated_at);


--
-- Name: search_categories_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_categories_order_idx ON public.search_categories USING btree (_order);


--
-- Name: search_categories_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_categories_parent_id_idx ON public.search_categories USING btree (_parent_id);


--
-- Name: search_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_created_at_idx ON public.search USING btree (created_at);


--
-- Name: search_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_meta_meta_image_idx ON public.search USING btree (meta_image_id);


--
-- Name: search_rels_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_rels_order_idx ON public.search_rels USING btree ("order");


--
-- Name: search_rels_parent_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_rels_parent_idx ON public.search_rels USING btree (parent_id);


--
-- Name: search_rels_path_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_rels_path_idx ON public.search_rels USING btree (path);


--
-- Name: search_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_rels_posts_id_idx ON public.search_rels USING btree (posts_id);


--
-- Name: search_slug_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_slug_idx ON public.search USING btree (slug);


--
-- Name: search_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX search_updated_at_idx ON public.search USING btree (updated_at);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_sessions_order_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX users_sessions_order_idx ON public.users_sessions USING btree (_order);


--
-- Name: users_sessions_parent_id_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX users_sessions_parent_id_idx ON public.users_sessions USING btree (_parent_id);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: bmadmin
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_content(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_parent_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_parent_id_pages_id_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: _pages_v_rels _pages_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_version_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_hero_media_id_media_id_fk FOREIGN KEY (version_hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v _pages_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_parent_id_posts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_parent_id_posts_id_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE SET NULL;


--
-- Name: _posts_v_rels _posts_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: _posts_v _posts_v_version_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_hero_image_id_media_id_fk FOREIGN KEY (version_hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_doc_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_doc_id_categories_id_fk FOREIGN KEY (doc_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories categories_parent_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_categories_id_fk FOREIGN KEY (parent_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: customer customer_customer_logo_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_customer_logo_id_media_id_fk FOREIGN KEY (customer_logo_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: footer_nav_items footer_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: form_submissions form_submissions_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: form_submissions_submission_data form_submissions_submission_data_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_country forms_blocks_country_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_email forms_blocks_email_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_message forms_blocks_message_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_number forms_blocks_number_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select_options forms_blocks_select_options_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms_blocks_select(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select forms_blocks_select_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_state forms_blocks_state_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_text forms_blocks_text_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_textarea forms_blocks_textarea_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_emails forms_emails_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: gallery gallery_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.gallery
    ADD CONSTRAINT gallery_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: header_nav_items header_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_archive pages_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content pages_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta pages_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_hero_links pages_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_hero_media_id_media_id_fk FOREIGN KEY (hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages pages_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_rels pages_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_jobs_log payload_jobs_log_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.payload_jobs(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_customer_fk FOREIGN KEY (customer_id) REFERENCES public.customer(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_form_submissions_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_form_submissions_fk FOREIGN KEY (form_submissions_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_forms_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_forms_fk FOREIGN KEY (forms_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_gallery_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_gallery_fk FOREIGN KEY (gallery_id) REFERENCES public.gallery(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_payload_jobs_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_payload_jobs_fk FOREIGN KEY (payload_jobs_id) REFERENCES public.payload_jobs(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_redirects_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_redirects_fk FOREIGN KEY (redirects_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_search_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_search_fk FOREIGN KEY (search_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: posts posts_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_hero_image_id_media_id_fk FOREIGN KEY (hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts posts_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts_populated_authors posts_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: search_categories search_categories_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.search_categories
    ADD CONSTRAINT search_categories_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: search search_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: search_rels search_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: search_rels search_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: users_sessions users_sessions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: bmadmin
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict O0q27A8MlHz4uwosh7sdWqIvvkDAHNUbFCzzVc3gvWkr4L3KeE2a3UQAh68x6Mt

