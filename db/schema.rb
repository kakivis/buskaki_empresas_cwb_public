# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_20_162937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "address_standardizer"
  enable_extension "fuzzystrmatch"
  enable_extension "pgrouting"
  enable_extension "plpgsql"
  enable_extension "postgis"
  enable_extension "postgis_topology"
  enable_extension "postgres_fdw"
  enable_extension "unaccent"

  create_table "1656155pois", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "nome", limit: 150
    t.string "tipo", limit: 60
    t.string "sub_tipo", limit: 60
    t.string "contorno"
    t.float "latitude"
    t.float "longitude"
    t.geometry "geometry", limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "1657470_dia_pluviometria", primary_key: "id_dia", id: :serial, force: :cascade do |t|
    t.integer "id_estacao", null: false
    t.integer "dia"
    t.integer "mes"
    t.integer "ano"
    t.decimal "precipitacao", precision: 4, scale: 1
    t.boolean "chuva_acumulada"
    t.boolean "contem_dado"
  end

  create_table "1657470_estacao_pluviometria", id: :integer, default: nil, force: :cascade do |t|
    t.string "estacao", limit: 100
    t.string "municipio", limit: 100
    t.decimal "altitude", precision: 7, scale: 3
    t.integer "codigo"
    t.datetime "instalacao"
    t.string "bacia", limit: 100
    t.string "latitude", limit: 100
    t.float "latitude_dec"
    t.string "entidade", limit: 100
    t.string "extincao", limit: 100
    t.string "sub_bacia", limit: 100
    t.string "longitude", limit: 100
    t.float "longitude_dec"
  end

  create_table "1717464antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "1717464estradas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "1717464lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "1717464lotes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incoradora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
    t.float "area"
  end

  create_table "1717464residencias", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "cod", limit: 32
    t.string "id", limit: 16
    t.decimal "nmorador"
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "1717464rios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"line_string"}
  end

  create_table "1717464uso", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "1717464uso", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "1718835NaviosBatalhas", id: false, force: :cascade do |t|
  end

  create_table "1956477_antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "1956477_estradas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "1956477_lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "1956477_lotes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incoradora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
    t.float "area"
  end

  create_table "1956477_residencias", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "cod", limit: 32
    t.string "id", limit: 16
    t.decimal "nmorador"
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "1956477_rios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"line_string"}
  end

  create_table "1956477_uso", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "1956477_uso", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "2028379classe", id: false, force: :cascade do |t|
  end

  create_table "2122480_acidentes", id: :integer, default: -> { "nextval('acidentes_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "no_seq_coll", limit: 30
    t.string "jr_semn_accdn", limit: 5
    t.date "dt_accdn"
    t.integer "cd_muncp"
    t.integer "no_civiq_accdn"
    t.string "rue_accdn", limit: 50
    t.integer "tp_reprr_accdn"
    t.string "accdn_pres_de", limit: 50
    t.integer "nb_metre_dist_accd"
    t.integer "cd_genre_accdn"
    t.integer "cd_sit_prtce_accdn"
    t.integer "cd_etat_surfc"
    t.integer "cd_eclrm"
    t.integer "cd_envrn_accdn"
    t.integer "no_route"
    t.integer "cd_categ_route"
    t.integer "cd_etat_chass"
    t.integer "cd_aspct_route"
    t.integer "cd_locln_accdn"
    t.integer "cd_posi_accdn"
    t.integer "cd_confg_route"
    t.integer "cd_zon_travx_routr"
    t.integer "cd_pnt_cdrnl_route"
    t.string "cd_pnt_cdrnl_reprr", limit: 20
    t.integer "cd_cond_meteo"
    t.integer "nb_veh_impliques_accdn"
    t.integer "nb_morts"
    t.integer "nb_blesses_graves"
    t.integer "nb_bless_legers"
    t.string "hr_accdn", limit: 50
    t.integer "an"
    t.integer "nb_victimes_total"
    t.string "gravite", limit: 80
    t.string "reg_adm", limit: 50
    t.string "mrc", limit: 50
    t.integer "nb_automobile_camion_leger"
    t.integer "nb_camionlourd_tractroutier"
    t.integer "nb_outil_equipement"
    t.integer "nb_tous_autobus_minibus"
    t.integer "nb_bicyclette"
    t.integer "nb_cyclomoteur"
    t.integer "nb_motocyclette"
    t.integer "nb_taxi"
    t.integer "nb_urgence"
    t.integer "nb_motoneige"
    t.integer "nb_vhr"
    t.integer "nb_autres_types"
    t.integer "nb_veh_non_precise"
    t.integer "nb_deces_pieton"
    t.integer "nb_blesses_pieton"
    t.integer "nb_victimes_pieton"
    t.integer "nb_deces_moto"
    t.integer "nb_blesses_moto"
    t.integer "nb_victimes_moto"
    t.integer "nb_deces_velo"
    t.integer "nb_blesses_velo"
    t.integer "nb_victimes_velo"
    t.integer "vitesse_autor"
    t.float "loc_x"
    t.float "loc_y"
    t.string "loc_cote_q", limit: 5
    t.integer "loc_cote_p"
    t.string "loc_detachee", limit: 5
    t.string "loc_imprecision", limit: 5
    t.float "loc_long"
    t.float "loc_lat"
    t.integer "borne_km_accdn"
    t.string "sfx_no_civq_accdn", limit: 10
    t.string "result", limit: 80
    t.float "found_lat"
    t.float "found_long"
    t.text "details"
    t.float "distance"
    t.geometry "geom_original", limit: {:srid=>4326, :type=>"st_point"}
    t.geometry "geom_found", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["geom_found"], name: "geom_found_gix", using: :gist
    t.index ["geom_original"], name: "acidente_gix", using: :gist
    t.index ["geom_original"], name: "geom_original_gix", using: :gist
  end

  create_table "2122480_geobase_mtl", primary_key: "gid", id: :integer, default: -> { "nextval('geobase_mtl_gid_seq'::regclass)" }, force: :cascade do |t|
    t.decimal "id_trc", precision: 10
    t.decimal "deb_gch", precision: 10
    t.decimal "fin_gch", precision: 10
    t.string "arr_gch", limit: 200
    t.decimal "sens_cir"
    t.decimal "classe"
    t.string "lie_voie", limit: 10
    t.string "typ_voie", limit: 15
    t.string "dir_voie", limit: 5
    t.string "nom_voie", limit: 50
    t.decimal "deb_drt", precision: 10
    t.decimal "fin_drt", precision: 10
    t.string "arr_drt", limit: 200
    t.string "lim_gch", limit: 30
    t.string "lim_drt", limit: 30
    t.geometry "geom", limit: {:srid=>0, :type=>"multi_line_string"}
    t.geometry "geom_fixed", limit: {:srid=>4326, :type=>"multi_line_string"}
    t.geometry "geom_original", limit: {:srid=>32188, :type=>"multi_line_string"}
    t.index ["geom"], name: "geobase_mtl_geom_idx", using: :gist
    t.index ["geom_original"], name: "rue_gix", using: :gist
  end

  create_table "2122480_limadmin", primary_key: "gid", id: :integer, default: -> { "nextval('limadmin_gid_seq'::regclass)" }, force: :cascade do |t|
    t.integer "munid"
    t.string "codeid", limit: 20
    t.string "codemamrot", limit: 10
    t.string "nom", limit: 100
    t.string "type", limit: 20
    t.string "abrev", limit: 10
    t.integer "num"
    t.decimal "aire"
    t.decimal "perim"
    t.geometry "geom", limit: {:srid=>0, :type=>"multi_polygon"}
    t.geometry "geom_fixed", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.geometry "geom_original", limit: {:srid=>32188, :type=>"multi_polygon"}
    t.index ["geom"], name: "limadmin_geom_idx", using: :gist
  end

  create_table "2122650_antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "2122650_devedores", id: :bigint, default: nil, force: :cascade do |t|
    t.string "logradouro", limit: 255, null: false
    t.string "bairro", limit: 255
    t.string "cidade", limit: 255
    t.string "estado", limit: 255
    t.string "cep", limit: 255
    t.string "produto", limit: 255
    t.decimal "pmt_vl", precision: 10, scale: 2
    t.decimal "latitude", precision: 10, scale: 7
    t.decimal "longitude", precision: 10, scale: 7
    t.string "genero", limit: 255
    t.geometry "the_geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["cidade"], name: "2122650_devedores_cidade_idx"
    t.index ["the_geom"], name: "2122650_devedores_the_geom_idx", using: :gist
    t.index ["the_geom"], name: "2122650_devedores_the_geom_idx1", using: :gist
  end

  create_table "2122650_devedores_teste", id: false, force: :cascade do |t|
    t.bigint "id"
    t.geometry "geomx", limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "2122650_estradas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "2122650_lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "2122650_lotes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incoradora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "2122650_residencias", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "cod", limit: 32
    t.string "id", limit: 16
    t.decimal "nmorador"
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "2122650_rios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"line_string"}
  end

  create_table "2122650_uso", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "2122650_uso", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "756antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "756estradas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "756lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "756lotes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incoradora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
    t.float "area"
  end

  create_table "756residencias", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "cod", limit: 32
    t.string "id", limit: 16
    t.decimal "nmorador"
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "756rios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"line_string"}
  end

  create_table "756uso", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "756uso", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "BD2_Emendas_Parlamentares", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Ano"
    t.integer "Cod_autor"
    t.string "Nome_ Autor"
    t.string "Cidade"
    t.string "UF"
    t.integer "Cod_Setor"
    t.string "Nome_Setor"
    t.float "Valor"
    t.integer "Latitude"
    t.integer "Longitude"
  end

  create_table "ForestGIS_BaseLayers", id: :serial, force: :cascade do |t|
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.bigint "objectid_1"
    t.integer "objectid"
    t.string "saa_nm_aqu", limit: 50
    t.string "saa_nm_sis", limit: 15
    t.integer "saa_cd"
    t.string "saa_nm_leg", limit: 60
    t.float "saa_gm_are"
    t.float "saa_gm_a_1"
    t.float "saa_gm_per"
  end

  create_table "Prova - Despesas", id: false, force: :cascade do |t|
    t.text "\tANO_EMPENHO\t"
    t.text "\tDT_EMPENHO\t"
    t.decimal "\tCD_FONTE\t"
    t.text "\tDS_FONTE\t"
    t.decimal "\tCD_FUNCAO\t"
    t.text "\tDS_FUNCAO\t"
    t.decimal "\tCD_PROGRAMA\t"
    t.text "\tDS_PROGRAMA\t"
    t.decimal "\tCD_ACAO\t"
    t.text "\tDS_ACAO\t"
    t.decimal "\tCD_SUBELEMENTO\t"
    t.text "\tDS_SUBELEMENTO\t"
    t.decimal "\tCD_ORGAO\t"
    t.text "\tDS_ORGAO\t"
    t.decimal "\tCD_DESPESA\t"
    t.text "\tDS_DESPESA\t"
    t.decimal "\tCODIGO_DESPESA_GRUPO\t"
    t.text "\tDS_GRUPO\t"
    t.decimal "\tCODIGO_DESPESA_MODALIDADE\t"
    t.text "\tDS_MODALIDADE\t"
    t.decimal "\tCODIGO_DESPESA_ELEMENTO\t"
    t.text "\tDS_ELEMENTO\t"
    t.text "\tCPF_CNPJ\t"
    t.text "\tNR_EMPENHO\t"
    t.text "\tLICITACAO\t"
    t.text "\tVL_EMPENHADO\t"
    t.decimal "\tCD_ITEM\t"
    t.text "\tDS_ITEM\t"
    t.text "\tDS_UNIDADE\t"
    t.float "\tQUANTIDADE\t"
    t.money "\tVL_PRECO_UNITARIO\t", scale: 2
    t.money "\tVL_TOTAL\t", scale: 2
    t.text "\tPROTOCOLOSUP\t"
    t.text "\tDT_TRANSACAO\t"
    t.decimal "\tNR_PARCELA\t"
    t.text "\tTRANSACAO\t"
    t.money "\tVL_LIQUIDADO\t", scale: 2
    t.money "\tVL_DEVOLVIDO\t", scale: 2
    t.money "\tVL_ANULADO\t", scale: 2
    t.money "\tVL_PAGO\t", scale: 2
    t.money "\tVL_CONSIGNADO\t", scale: 2
  end

  create_table "a1044494_antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "a1044494_base_regional", primary_key: "cod_reg", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "cod_mun"
    t.integer "nome_mun"
    t.integer "nome_rm"
    t.integer "codrm"
    t.integer "ano"
    t.float "espvida"
    t.float "fectot"
    t.float "mort1"
    t.float "mort5"
    t.float "sobre40"
    t.float "sobre60"
    t.float "razdep"
    t.float "t_env"
    t.float "e_anosestudo"
    t.float "t_analf11a14"
    t.float "t_analf15a17"
    t.float "t_analf15m"
    t.float "t_analf18a24"
    t.float "t_analf18m"
    t.float "t_analf25a29"
    t.float "t_analf25m"
    t.float "t_atraso_2_basico"
    t.float "t_atraso_2_fund"
    t.float "t_fbbas"
    t.float "t_fbfund"
    t.float "t_fbmed"
    t.float "t_fbsuper"
    t.float "t_flbas"
    t.float "t_flfund"
    t.float "t_flmed"
    t.float "t_flsuper"
    t.float "t_freq0a5"
    t.float "t_freq15a17"
    t.float "t_freq18a24"
    t.float "t_freq25a29"
    t.float "t_freq5a6"
    t.float "t_freq6a14"
    t.float "t_freq6a17"
    t.float "t_freqfund1517"
    t.float "t_freqfund1824"
    t.float "t_freqmed1824"
    t.float "t_fund11a13"
    t.float "t_fund11a13_tudo"
    t.float "t_fund15a17"
    t.float "t_fund18a24"
    t.float "t_fund25m"
    t.float "t_med18a20"
    t.float "t_med18a24"
    t.float "t_med18m"
    t.float "t_med25m"
    t.float "t_super25m"
    t.float "corte1"
    t.float "corte2"
    t.float "corte3"
    t.float "corte4"
    t.float "corte9"
    t.float "gini"
    t.float "pind"
    t.float "pindcri"
    t.float "pmpob"
    t.float "pmpobcri"
    t.float "ppob"
    t.float "ppobcri"
    t.float "pren10ricos"
    t.float "pren20"
    t.float "pren20ricos"
    t.float "pren40"
    t.float "pren60"
    t.float "pren80"
    t.float "prentrab"
    t.float "r1040"
    t.float "r2040"
    t.float "rdpc"
    t.float "rdpc1"
    t.float "rdpc10"
    t.float "rdpc2"
    t.float "rdpc3"
    t.float "rdpc4"
    t.float "rdpc5"
    t.float "rdpct"
    t.float "rind"
    t.float "rmpob"
    t.float "rpob"
    t.float "theil"
    t.float "p_agro"
    t.float "p_com"
    t.float "p_constr"
    t.float "p_extr"
    t.float "p_serv"
    t.float "p_siup"
    t.float "p_transf"
    t.float "cpr"
    t.float "emp"
    t.float "p_formal"
    t.float "trabcc"
    t.float "trabpub"
    t.float "trabsc"
    t.float "p_fund"
    t.float "p_med"
    t.float "p_super"
    t.float "ren0"
    t.float "ren1"
    t.float "ren2"
    t.float "ren3"
    t.float "ren5"
    t.float "renocup"
    t.float "theiltrab"
    t.float "t_ativ"
    t.float "t_ativ1014"
    t.float "t_ativ1517"
    t.float "t_ativ1824"
    t.float "t_ativ18m"
    t.float "t_ativ2529"
    t.float "t_des"
    t.float "t_des1014"
    t.float "t_des1517"
    t.float "t_des1824"
    t.float "t_des18m"
    t.float "t_des2529"
    t.float "t_agua"
    t.float "t_banagua"
    t.float "t_dens"
    t.float "t_lixo"
    t.float "t_luz"
    t.float "agua_esgoto"
    t.float "parede"
    t.float "t_crifundin_todos"
    t.float "t_fora0a5"
    t.float "t_fora6a14"
    t.float "t_fundin_todos"
    t.float "t_fundin_todos_mmeio"
    t.float "t_fundin18minf"
    t.float "t_m10a17cf"
    t.float "t_mulchefefif014"
    t.float "t_nestuda_ntrab_mmeio"
    t.float "t_ocupdesloc_1"
    t.float "t_rmaxidoso"
    t.float "t_sluz"
    t.float "t_vulnera_nestuda_ntrab_mmeio"
    t.float "t_vulnera_mulchefe"
    t.float "t_vulnera_rmaxidoso"
    t.float "t_vulnera_ocupdesloc_13"
    t.integer "homem0a4"
    t.integer "homem10a14"
    t.integer "homem15a19"
    t.integer "homem20a24"
    t.integer "homem25a29"
    t.integer "homem30a34"
    t.integer "homem35a39"
    t.integer "homem40a44"
    t.integer "homem45a49"
    t.integer "homem50a54"
    t.integer "homem55a59"
    t.integer "homem5a9"
    t.integer "homem60a64"
    t.integer "homem65a69"
    t.integer "homem70a74"
    t.integer "homem75a79"
    t.integer "homens80"
    t.integer "homemtot"
    t.integer "mulh0a4"
    t.integer "mulh10a14"
    t.integer "mulh15a19"
    t.integer "mulh20a24"
    t.integer "mulh25a29"
    t.integer "mulh30a34"
    t.integer "mulh35a39"
    t.integer "mulh40a44"
    t.integer "mulh45a49"
    t.integer "mulh50a54"
    t.integer "mulh55a59"
    t.integer "mulh5a9"
    t.integer "mulh60a64"
    t.integer "mulh65a69"
    t.integer "mulh70a74"
    t.integer "mulh75a79"
    t.integer "mulher80"
    t.integer "mulhertot"
    t.integer "pea"
    t.integer "pea1014"
    t.integer "pea1517"
    t.integer "pea18m"
    t.integer "peso1"
    t.integer "peso1114"
    t.integer "peso1113"
    t.integer "peso1214"
    t.integer "peso13"
    t.integer "peso15"
    t.integer "peso1517"
    t.integer "peso1524"
    t.integer "peso1618"
    t.integer "peso18"
    t.integer "peso1820"
    t.integer "peso1824"
    t.integer "peso1921"
    t.integer "peso25"
    t.integer "peso4"
    t.integer "peso5"
    t.integer "peso6"
    t.integer "peso610"
    t.integer "peso617"
    t.integer "peso65"
    t.integer "pesom1014"
    t.integer "pesom1517"
    t.integer "pesom15m"
    t.integer "pesom25m"
    t.integer "pesorur"
    t.integer "pesotot"
    t.integer "pesourb"
    t.integer "pia"
    t.integer "pia1014"
    t.integer "pia1517"
    t.integer "pia18m"
    t.integer "pop"
    t.integer "popt"
    t.integer "mulchefefdom"
    t.integer "domvulneracomid"
    t.integer "popvulneravel15a24"
    t.integer "ocupmmeiod"
    t.float "t_fbfund_tudo"
    t.float "t_fbmed_tudo"
    t.float "t_flfund_tudo"
    t.float "i_escolaridade"
    t.float "i_freq_prop"
    t.float "idhm"
    t.float "idhm_e"
    t.float "idhm_l"
    t.float "idhm_r"
  end

  create_table "a1044494_base_regional_teste", id: false, force: :cascade do |t|
    t.integer "cod_reg"
    t.string "nome_reg", limit: 100
    t.integer "cod_mun"
    t.string "nome_mun", limit: 50
    t.string "nome_rm", limit: 50
    t.integer "codrm"
    t.integer "ano"
  end

  create_table "a1044494_cohab", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "id"
    t.date "data_inscricao"
    t.string "data_validade", limit: 30
    t.string "condicao_especial", limit: 100
    t.string "faixa_renda", limit: 30
    t.string "bairro", limit: 100
    t.string "cidade", limit: 50
    t.datetime "data_lote"
    t.float "codigo"
  end

  create_table "a1044494_cohab_mulher", id: false, force: :cascade do |t|
    t.integer "gid"
    t.integer "id"
    t.date "data_inscricao"
    t.string "data_validade", limit: 30
    t.string "condicao_especial", limit: 100
    t.string "faixa_renda", limit: 30
    t.string "bairro", limit: 100
    t.string "cidade", limit: 50
    t.datetime "data_lote"
    t.float "codigo"
  end

  create_table "a1044494_cohab_mulher_mapa", id: false, force: :cascade do |t|
    t.integer "gid"
    t.string "nome", limit: 30
    t.bigint "count"
    t.float "st_area"
    t.float "prop"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "a1044494_company", primary_key: "company_name", id: :string, limit: 35, force: :cascade do |t|
    t.string "city", limit: 35
  end

  create_table "a1044494_dadosUDH", id: :serial, force: :cascade do |t|
    t.geometry "geom", limit: {:srid=>29192, :type=>"multi_polygon"}
    t.integer "gid"
    t.float "prop"
  end

  create_table "a1044494_employee", primary_key: "employee_name", id: :string, limit: 35, force: :cascade do |t|
    t.string "street", limit: 35
    t.string "city", limit: 35
  end

  create_table "a1044494_estradas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "a1044494_lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "a1044494_lotes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incoradora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
    t.integer "area"
  end

  create_table "a1044494_managers", id: false, force: :cascade do |t|
    t.string "employee_name", limit: 35
    t.string "manager_name", limit: 35
  end

  create_table "a1044494_residencias", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "cod", limit: 32
    t.string "id", limit: 16
    t.decimal "nmorador"
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "a1044494_rios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"line_string"}
  end

  create_table "a1044494_rm_curitiba_udh_curitiba", id: false, force: :cascade do |t|
    t.integer "gid"
    t.string "udh_atlas", limit: 20
    t.string "regional", limit: 20
    t.string "cd_geocodm", limit: 20
    t.string "nm_municip", limit: 60
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.float "area"
  end

  create_table "a1044494_servidores", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 254
    t.string "cargo", limit: 62
    t.string "cargo_comissao", limit: 62
    t.integer "mes"
    t.integer "ano"
    t.string "lotacao", limit: 62
    t.decimal "total_descontos", precision: 17, scale: 2
    t.decimal "total_liquido", precision: 17, scale: 2
    t.decimal "tot_vantagens", precision: 17, scale: 2
    t.string "motivo", limit: 62
    t.string "descricao_evento", limit: 62
    t.decimal "valor_evento", precision: 17, scale: 2
    t.string "tipo_evento", limit: 25
  end

  create_table "a1044494_udh", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.bigint "cod_id"
    t.bigint "udh_atlas"
    t.string "nome_udh", limit: 30
    t.integer "codmun6"
    t.string "nome_mun", limit: 50
    t.integer "coduf"
    t.string "nome_uf", limit: 10
    t.integer "codrm"
    t.string "nome_rm", limit: 50
    t.integer "ano"
    t.float "espvida"
    t.float "fectot"
    t.float "mort1"
    t.float "mort5"
    t.float "sobre40"
    t.float "sobre60"
    t.float "razdep"
    t.float "t_env"
    t.float "e_anosestudo"
    t.float "t_analf11a14"
    t.float "t_analf15a17"
    t.float "t_analf15m"
    t.float "t_analf18a24"
    t.float "t_analf18m"
    t.float "t_analf25a29"
    t.float "t_analf25m"
    t.float "t_atraso_2_basico"
    t.float "t_atraso_2_fund"
    t.float "t_fbbas"
    t.float "t_fbfund"
    t.float "t_fbmed"
    t.float "t_fbsuper"
    t.float "t_flbas"
    t.float "t_flfund"
    t.float "t_flmed"
    t.float "t_flsuper"
    t.float "t_freq0a5"
    t.float "t_freq15a17"
    t.float "t_freq18a24"
    t.float "t_freq25a29"
    t.float "t_freq5a6"
    t.float "t_freq6a14"
    t.float "t_freq6a17"
    t.float "t_freqfund1517"
    t.float "t_freqfund1824"
    t.float "t_freqmed1824"
    t.float "t_fund11a13"
    t.float "t_fund11a13_tudo"
    t.float "t_fund15a17"
    t.float "t_fund18a24"
    t.float "t_fund25m"
    t.float "t_med18a20"
    t.float "t_med18a24"
    t.float "t_med18m"
    t.float "t_med25m"
    t.float "t_super25m"
    t.float "corte1"
    t.float "corte2"
    t.float "corte3"
    t.float "corte4"
    t.float "corte9"
    t.float "gini"
    t.float "pind"
    t.float "pindcri"
    t.float "pmpob"
    t.float "pmpobcri"
    t.float "ppob"
    t.float "ppobcri"
    t.float "pren10ricos"
    t.float "pren20"
    t.float "pren20ricos"
    t.float "pren40"
    t.float "pren60"
    t.float "pren80"
    t.float "prentrab"
    t.float "r1040"
    t.float "r2040"
    t.float "rdpc"
    t.float "rdpc1"
    t.float "rdpc10"
    t.float "rdpc2"
    t.float "rdpc3"
    t.float "rdpc4"
    t.float "rdpc5"
    t.float "rdpct"
    t.float "rind"
    t.float "rmpob"
    t.float "rpob"
    t.float "theil"
    t.float "p_agro"
    t.float "p_com"
    t.float "p_constr"
    t.float "p_extr"
    t.float "p_serv"
    t.float "p_siup"
    t.float "p_transf"
    t.float "cpr"
    t.float "emp"
    t.float "p_formal"
    t.float "trabcc"
    t.float "trabpub"
    t.float "trabsc"
    t.float "p_fund"
    t.float "p_med"
    t.float "p_super"
    t.float "ren0"
    t.float "ren1"
    t.float "ren2"
    t.float "ren3"
    t.float "ren5"
    t.float "renocup"
    t.float "theiltrab"
    t.float "t_ativ"
    t.float "t_ativ1014"
    t.float "t_ativ1517"
    t.float "t_ativ1824"
    t.float "t_ativ18m"
    t.float "t_ativ2529"
    t.float "t_des"
    t.float "t_des1014"
    t.float "t_des1517"
    t.float "t_des1824"
    t.float "t_des18m"
    t.float "t_des2529"
    t.float "t_agua"
    t.float "t_banagua"
    t.float "t_dens"
    t.float "t_lixo"
    t.float "t_luz"
    t.float "agua_esgoto"
    t.float "parede"
    t.float "t_crifundin_todos"
    t.float "t_fora0a5"
    t.float "t_fora6a14"
    t.float "t_fundin_todos"
    t.float "t_fundin_todos_mmeio"
    t.float "t_fundin18minf"
    t.float "t_m10a17cf"
    t.float "t_mulchefefif014"
    t.float "t_nestuda_ntrab_mmeio"
    t.float "t_ocupdesloc_1"
    t.float "t_rmaxidoso"
    t.float "t_sluz"
    t.float "t_vulnera_nestuda_ntrab_mmeio"
    t.float "t_vulnera_mulchefe"
    t.float "t_vulnera_rmaxidoso"
    t.float "t_vulnera_ocupdesloc_13"
    t.integer "homem0a4"
    t.integer "homem10a14"
    t.integer "homem15a19"
    t.integer "homem20a24"
    t.integer "homem25a29"
    t.integer "homem30a34"
    t.integer "homem35a39"
    t.integer "homem40a44"
    t.integer "homem45a49"
    t.integer "homem50a54"
    t.integer "homem55a59"
    t.integer "homem5a9"
    t.integer "homem60a64"
    t.integer "homem65a69"
    t.integer "homem70a74"
    t.integer "homem75a79"
    t.integer "homens80"
    t.integer "homemtot"
    t.integer "mulh0a4"
    t.integer "mulh10a14"
    t.integer "mulh15a19"
    t.integer "mulh20a24"
    t.integer "mulh25a29"
    t.integer "mulh30a34"
    t.integer "mulh35a39"
    t.integer "mulh40a44"
    t.integer "mulh45a49"
    t.integer "mulh50a54"
    t.integer "mulh55a59"
    t.integer "mulh5a9"
    t.integer "mulh60a64"
    t.integer "mulh65a69"
    t.integer "mulh70a74"
    t.integer "mulh75a79"
    t.integer "mulher80"
    t.integer "mulhertot"
    t.integer "pea"
    t.integer "pea1014"
    t.integer "pea1517"
    t.integer "pea18m"
    t.integer "peso1"
    t.integer "peso1114"
    t.integer "peso1113"
    t.integer "peso1214"
    t.integer "peso13"
    t.integer "peso15"
    t.integer "peso1517"
    t.integer "peso1524"
    t.integer "peso1618"
    t.integer "peso18"
    t.integer "peso1820"
    t.integer "peso1824"
    t.integer "peso1921"
    t.integer "peso25"
    t.integer "peso4"
    t.integer "peso5"
    t.integer "peso6"
    t.integer "peso610"
    t.integer "peso617"
    t.integer "peso65"
    t.integer "pesom1014"
    t.integer "pesom1517"
    t.integer "pesom15m"
    t.integer "pesom25m"
    t.integer "pesorur"
    t.integer "pesotot"
    t.integer "pesourb"
    t.integer "pia"
    t.integer "pia1014"
    t.integer "pia1517"
    t.integer "pia18m"
    t.integer "pop"
    t.integer "popt"
    t.integer "mulchefefdom"
    t.integer "domvulneracomid"
    t.integer "popvulneravel15a24"
    t.integer "ocupmmeiod"
    t.float "t_fbfund_tudo"
    t.float "t_fbmed_tudo"
    t.float "t_flfund_tudo"
    t.float "i_escolaridade"
    t.float "i_freq_prop"
    t.float "idhm"
    t.float "idhm_e"
    t.float "idhm_l"
    t.float "idhm_r"
  end

  create_table "a1044494_udh_2000", id: false, force: :cascade do |t|
    t.bigint "cod_id"
    t.string "nome_udh", limit: 200
    t.integer "gid"
    t.integer "codmun6"
    t.string "nome_mun", limit: 50
    t.integer "coduf"
    t.string "nome_uf", limit: 10
    t.integer "codrm"
    t.string "nome_rm", limit: 100
    t.integer "ano"
    t.float "espvida"
    t.float "fectot"
    t.float "mort1"
    t.float "mort5"
    t.float "sobre40"
    t.float "sobre60"
    t.float "razdep"
    t.float "t_env"
    t.string "regional", limit: 20
    t.string "cd_geocodm", limit: 20
    t.string "nm_municip", limit: 60
    t.float "area"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "a1044494_udh_2010", id: false, force: :cascade do |t|
    t.bigint "cod_id"
    t.string "nome_udh", limit: 200
    t.integer "gid"
    t.integer "codmun6"
    t.string "nome_mun", limit: 50
    t.integer "coduf"
    t.string "nome_uf", limit: 10
    t.integer "codrm"
    t.string "nome_rm", limit: 100
    t.integer "ano"
    t.float "espvida"
    t.float "fectot"
    t.float "mort1"
    t.float "mort5"
    t.float "sobre40"
    t.float "sobre60"
    t.float "razdep"
    t.float "t_env"
    t.string "regional", limit: 20
    t.string "cd_geocodm", limit: 20
    t.string "nm_municip", limit: 60
    t.float "area"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "a1044494_udh_dados", id: false, force: :cascade do |t|
    t.bigint "cod_id"
    t.bigint "udh_atlas"
    t.string "nome_udh", limit: 200
    t.integer "codmun6"
    t.string "nome_mun", limit: 50
    t.integer "coduf"
    t.string "nome_uf", limit: 10
    t.integer "codrm"
    t.string "nome_rm", limit: 100
    t.integer "ano"
    t.float "espvida"
    t.float "fectot"
    t.float "mort1"
    t.float "mort5"
    t.float "sobre40"
    t.float "sobre60"
    t.float "razdep"
    t.float "t_env"
  end

  create_table "a1044494_udh_teste", id: false, force: :cascade do |t|
    t.bigint "cod_id"
    t.bigint "udh_atlas"
    t.string "nome_udh", limit: 200
    t.integer "codmun6"
    t.string "nome_mun", limit: 50
    t.integer "coduf"
    t.string "nome_uf", limit: 10
    t.integer "codrm"
    t.string "nome_rm", limit: 100
    t.integer "ano"
    t.float "espvida"
  end

  create_table "a1044494_uso", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "uso", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "a1044494_works", id: false, force: :cascade do |t|
    t.string "employee_name", limit: 35
    t.string "company_name", limit: 35
    t.integer "salary"
  end

  create_table "a104494_udh_curitiba_dados", id: false, force: :cascade do |t|
    t.bigint "cod_id"
    t.bigint "udh_atlas"
    t.string "nome_udh", limit: 200
    t.integer "codmun6"
    t.string "nome_mun", limit: 50
    t.integer "coduf"
    t.string "nome_uf", limit: 10
    t.integer "codrm"
    t.string "nome_rm", limit: 100
    t.integer "ano"
    t.float "espvida"
    t.float "fectot"
    t.float "mort1"
    t.float "mort5"
    t.float "sobre40"
    t.float "sobre60"
    t.float "razdep"
    t.float "t_env"
  end

  create_table "a104494_udh_udhatlas", id: false, force: :cascade do |t|
    t.integer "gid"
    t.bigint "udh_atlas"
    t.string "regional", limit: 20
    t.string "cd_geocodm", limit: 20
    t.string "nm_municip", limit: 60
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.float "area"
  end

  create_table "a1508873_batalha", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.integer "data"
  end

  create_table "a1508873_classe", primary_key: "classe", id: :string, limit: 50, force: :cascade do |t|
    t.string "tipo", limit: 10
    t.string "pais", limit: 50
    t.integer "numero_armas"
    t.integer "calibre"
    t.integer "deslocamento"
  end

  create_table "a1508873_cnae", primary_key: ["j_documento", "j_nome", "codigocnae"], force: :cascade do |t|
    t.string "j_documento", null: false
    t.string "j_nome", null: false
    t.integer "codigocnae", null: false
  end

  create_table "a1508873_fisica", primary_key: ["f_documento", "f_nome"], force: :cascade do |t|
    t.string "f_documento", null: false
    t.string "f_nome", null: false
    t.string "paisorigem"
  end

  create_table "a1508873_juridica", primary_key: ["j_documento", "j_nome"], force: :cascade do |t|
    t.string "j_documento", null: false
    t.string "j_nome", null: false
    t.date "datainicio"
    t.string "razaosocial"
    t.integer "capitalsocial"
    t.integer "filial_matriz"
    t.integer "cod_nat_juridica"
    t.boolean "opmei"
    t.integer "porte"
  end

  create_table "a1508873_navio", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.string "classe", limit: 50
    t.integer "ano_lancto"
  end

  create_table "a1508873_pessoa", primary_key: ["documento", "nome"], force: :cascade do |t|
    t.string "documento", null: false
    t.string "nome", null: false
    t.string "rua"
    t.integer "número"
    t.string "cep"
    t.string "bairro"
  end

  create_table "a1508873_resultado", primary_key: ["nome_navio", "nome_batalha"], force: :cascade do |t|
    t.string "nome_navio", limit: 50, null: false
    t.string "nome_batalha", limit: 50, null: false
    t.string "result", limit: 10
  end

  create_table "a1508873_simples", primary_key: ["j_documento", "j_nome"], force: :cascade do |t|
    t.string "j_documento", null: false
    t.string "j_nome", null: false
    t.date "dataopcao"
    t.date "dataexclusao"
  end

  create_table "a1508873_situacaocadastral", primary_key: ["j_documento", "j_nome", "sitdata"], force: :cascade do |t|
    t.string "j_documento", null: false
    t.string "j_nome", null: false
    t.date "sitdata", null: false
    t.integer "motivo"
    t.integer "estado"
  end

  create_table "a1508873_sociofj", primary_key: ["documentoempresa", "nomeempresa", "documentosocio", "nomesocio"], force: :cascade do |t|
    t.string "documentoempresa", null: false
    t.string "nomeempresa", null: false
    t.string "documentosocio", null: false
    t.string "nomesocio", null: false
    t.integer "percentual"
    t.integer "qualif"
    t.boolean "resp"
  end

  create_table "a1508873_sociojj", primary_key: ["documentoempresa", "nomeempresa", "documentosocio", "nomesocio"], force: :cascade do |t|
    t.string "documentoempresa", null: false
    t.string "nomeempresa", null: false
    t.string "documentosocio", null: false
    t.string "nomesocio", null: false
    t.integer "percentual"
    t.integer "qualif"
  end

  create_table "a1508873_telefonespessoa", primary_key: ["documento", "nome", "telefone"], force: :cascade do |t|
    t.string "documento", null: false
    t.string "nome", null: false
    t.integer "telefone", null: false
  end

  create_table "a1612220company", primary_key: "company_name", id: :string, limit: 255, force: :cascade do |t|
    t.string "city", limit: 255
  end

  create_table "a1612220employee", primary_key: "employee_name", id: :string, limit: 255, force: :cascade do |t|
    t.string "street", limit: 255
    t.string "city", limit: 255
  end

  create_table "a1612220managers", primary_key: ["manager_name", "employee_name"], force: :cascade do |t|
    t.string "employee_name", limit: 255, null: false
    t.string "manager_name", limit: 255, null: false
  end

  create_table "a1612220works", primary_key: ["company_name", "employee_name"], force: :cascade do |t|
    t.string "employee_name", limit: 255, null: false
    t.string "company_name", limit: 255, null: false
    t.float "salary"
  end

  create_table "a1717456_historico_buscas", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.string "tipo_busca"
    t.string "params"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_a1717456_historico_buscas_on_usuario_id"
  end

  create_table "a1717456_usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "a1717464company", primary_key: "company_name", id: :string, limit: 100, force: :cascade do |t|
    t.string "city", limit: 100, null: false
  end

  create_table "a1717464employee", primary_key: "employee_name", id: :string, limit: 100, force: :cascade do |t|
    t.string "street", limit: 100, null: false
    t.string "city", limit: 100, null: false
  end

  create_table "a1717464lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
  end

  create_table "a1717464managers", primary_key: ["employee_name", "manager_name"], force: :cascade do |t|
    t.string "manager_name", limit: 100, null: false
    t.string "employee_name", limit: 100, null: false
  end

  create_table "a1717464works", primary_key: ["employee_name", "company_name"], force: :cascade do |t|
    t.string "company_name", limit: 100, null: false
    t.string "employee_name", limit: 100, null: false
    t.float "salary", null: false
  end

  create_table "a1718835cnae", primary_key: ["j_documento", "j_nome", "codigo_cnae"], force: :cascade do |t|
    t.string "j_documento", null: false
    t.string "j_nome", null: false
    t.integer "codigo_cnae", null: false
  end

  create_table "a1718835eats", primary_key: ["name", "pizza"], force: :cascade do |t|
    t.string "name", null: false
    t.string "pizza", null: false
  end

  create_table "a1718835fisica", primary_key: ["f_documento", "f_nome"], force: :cascade do |t|
    t.string "f_documento", null: false
    t.string "f_nome", null: false
    t.string "pais_origem"
  end

  create_table "a1718835frequents", primary_key: ["name", "pizzeria"], force: :cascade do |t|
    t.string "name", null: false
    t.string "pizzeria", null: false
  end

  create_table "a1718835juridica", primary_key: ["j_documento", "j_nome"], force: :cascade do |t|
    t.string "j_documento", null: false
    t.string "j_nome", null: false
    t.date "data_inicio"
    t.string "razao_social"
    t.integer "capital_social"
    t.integer "filial_matriz"
    t.integer "cod_nat_juridica"
    t.boolean "op_mei"
    t.integer "porte"
  end

  create_table "a1718835person", primary_key: "name", id: :string, force: :cascade do |t|
    t.integer "age"
    t.string "gender"
  end

  create_table "a1718835pessoa", primary_key: ["documento", "nome"], force: :cascade do |t|
    t.string "documento", null: false
    t.string "nome", null: false
    t.string "rua"
    t.integer "número"
    t.string "cep"
    t.string "bairro"
  end

  create_table "a1718835serves", primary_key: ["pizzeria", "pizza"], force: :cascade do |t|
    t.string "pizzeria", null: false
    t.string "pizza", null: false
    t.float "price"
  end

  create_table "a1718835simples", primary_key: ["j_documento", "j_nome"], force: :cascade do |t|
    t.string "j_documento", null: false
    t.string "j_nome", null: false
    t.date "data_opcao"
    t.date "data_exclusao"
  end

  create_table "a1718835situacao_cadastral", primary_key: ["j_documento", "j_nome", "sit_data"], force: :cascade do |t|
    t.string "j_documento", null: false
    t.string "j_nome", null: false
    t.date "sit_data", null: false
    t.integer "motivo"
    t.integer "estado"
  end

  create_table "a1718835sociofj", primary_key: ["documento_empresa", "nome_empresa", "documento_socio", "nome_socio"], force: :cascade do |t|
    t.string "documento_empresa", null: false
    t.string "nome_empresa", null: false
    t.string "documento_socio", null: false
    t.string "nome_socio", null: false
    t.integer "percentual"
    t.integer "qualif"
    t.boolean "resp"
  end

  create_table "a1718835sociojj", primary_key: ["documento_empresa", "nome_empresa", "documento_socio", "nome_socio"], force: :cascade do |t|
    t.string "documento_empresa", null: false
    t.string "nome_empresa", null: false
    t.string "documento_socio", null: false
    t.string "nome_socio", null: false
    t.integer "percentual"
    t.integer "qualif"
  end

  create_table "a1718835telefones_pessoa", primary_key: ["documento", "nome", "telefone"], force: :cascade do |t|
    t.string "documento", null: false
    t.string "nome", null: false
    t.integer "telefone", null: false
  end

  create_table "a1798855_cnae", primary_key: ["pj_documento", "pj_nome", "codigo_cnae"], force: :cascade do |t|
    t.string "pj_documento", limit: 14, null: false
    t.string "pj_nome", limit: 150, null: false
    t.string "codigo_cnae", limit: 7, null: false
  end

  create_table "a1798855_eats", primary_key: ["name", "pizza"], force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.string "pizza", limit: 45, null: false
  end

  create_table "a1798855_frequents", primary_key: ["name", "pizzeria"], force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.string "pizzeria", limit: 45, null: false
  end

  create_table "a1798855_person", primary_key: "name", id: :string, limit: 45, force: :cascade do |t|
    t.integer "age"
    t.string "gender", limit: 6
  end

  create_table "a1798855_pessoa", primary_key: ["documento", "nome"], force: :cascade do |t|
    t.string "documento", limit: 14, null: false
    t.string "nome", limit: 150, null: false
    t.string "rua", limit: 60
    t.string "numero", limit: 6
    t.string "cep", limit: 8
    t.string "bairro", limit: 50
  end

  create_table "a1798855_pessoa_fisica", primary_key: ["p_documento", "p_nome"], force: :cascade do |t|
    t.string "p_documento", limit: 14, null: false
    t.string "p_nome", limit: 150, null: false
    t.string "pais_origem", limit: 70
  end

  create_table "a1798855_pessoa_juridica", primary_key: ["p_documento", "p_nome"], force: :cascade do |t|
    t.string "p_documento", limit: 14, null: false
    t.string "p_nome", limit: 150, null: false
    t.date "data_inicio"
    t.string "razao_social", limit: 150
    t.string "capital_social", limit: 14
    t.integer "filial_matriz"
    t.string "cod_nat_juridica", limit: 4
    t.string "op_mei", limit: 1
    t.decimal "porte", precision: 2
  end

  create_table "a1798855_serves", primary_key: ["pizzeria", "pizza"], force: :cascade do |t|
    t.string "pizzeria", limit: 45, null: false
    t.string "pizza", limit: 45, null: false
    t.integer "price"
  end

  create_table "a1798855_simples", primary_key: ["pj_documento", "pj_nome"], force: :cascade do |t|
    t.string "pj_documento", limit: 14, null: false
    t.string "pj_nome", limit: 150, null: false
    t.date "data_opcao"
    t.date "data_exclusao"
  end

  create_table "a1798855_situacao_cadastral", primary_key: ["j_documento", "j_nome", "sit_data"], force: :cascade do |t|
    t.string "j_documento", null: false
    t.string "j_nome", null: false
    t.date "sit_data", null: false
    t.integer "motivo"
    t.integer "estado"
  end

  create_table "a1798855_socio_fj", primary_key: ["documento_empresa", "nome_empresa", "documento_socio", "nome_socio"], force: :cascade do |t|
    t.string "documento_empresa", limit: 14, null: false
    t.string "nome_empresa", limit: 150, null: false
    t.string "documento_socio", limit: 14, null: false
    t.string "nome_socio", limit: 150, null: false
    t.decimal "percentual", precision: 1, scale: 1
    t.integer "qualificacao"
    t.string "e_responsavel", limit: 1
  end

  create_table "a1798855_socio_jj", primary_key: ["documento_empresa", "nome_empresa", "documento_socio", "nome_socio"], force: :cascade do |t|
    t.string "documento_empresa", limit: 14, null: false
    t.string "nome_empresa", limit: 150, null: false
    t.string "documento_socio", limit: 14, null: false
    t.string "nome_socio", limit: 150, null: false
    t.decimal "percentual", precision: 1, scale: 1
    t.integer "qualificacao"
  end

  create_table "a1798855_telefone", primary_key: ["documento", "nome", "telefone"], force: :cascade do |t|
    t.string "documento", limit: 14, null: false
    t.string "nome", limit: 150, null: false
    t.string "telefone", limit: 12, null: false
  end

  create_table "a1906437_batalha", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.integer "data"
  end

  create_table "a1906437_classe", primary_key: "classe", id: :string, limit: 50, force: :cascade do |t|
    t.string "tipo", limit: 10
    t.string "pais", limit: 50
    t.integer "numero_armas"
    t.integer "calibre"
    t.integer "deslocamento"
  end

  create_table "a1906437_navio", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.string "classe", limit: 50
    t.integer "ano_lancto"
  end

  create_table "a1906437_resultado", primary_key: ["nome_navio", "nome_batalha"], force: :cascade do |t|
    t.string "nome_navio", limit: 50, null: false
    t.string "nome_batalha", limit: 50, null: false
    t.string "result", limit: 10
  end

  create_table "a1956477_genero", primary_key: "bairro", id: :string, limit: 30, force: :cascade do |t|
    t.integer "populacaofeminina"
    t.integer "populacaomasculina"
  end

  create_table "a1956477_renda", primary_key: "bairro", id: :string, limit: 30, force: :cascade do |t|
    t.integer "renda"
  end

  create_table "a1956477_sigesgarda", id: :integer, default: nil, force: :cascade do |t|
    t.integer "ano"
    t.string "bairro", limit: 30
    t.string "referenciaurbana", limit: 100
    t.string "rua", limit: 100
    t.string "descricao", limit: 100
    t.string "subdescricao", limit: 100
    t.date "dataocorrencia"
    t.string "diaocorrencia", limit: 7
    t.time "horaocorrencia"
    t.integer "mesocorrencia"
    t.string "regional", limit: 20
    t.string "secretaria", limit: 200
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_line_string"}
  end

  create_table "a1956477_sigesgarda_rua", id: false, force: :cascade do |t|
    t.string "bairro", limit: 30
    t.string "rua", limit: 100
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_line_string"}
  end

  create_table "a1956477company", primary_key: "companyname", id: :string, limit: 30, force: :cascade do |t|
    t.string "city", limit: 30
  end

  create_table "a1956477employees", primary_key: "employeesname", id: :string, limit: 30, force: :cascade do |t|
    t.string "city", limit: 30
    t.string "street", limit: 30
  end

  create_table "a1956477works", primary_key: ["companyname", "employeesname"], force: :cascade do |t|
    t.string "companyname", limit: 30, null: false
    t.string "employeesname", limit: 30, null: false
  end

  create_table "a2022540batalha", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.integer "data"
  end

  create_table "a2022540classe", primary_key: "classe", id: :string, limit: 50, force: :cascade do |t|
    t.string "tipo", limit: 10
    t.string "pais", limit: 50
    t.integer "numero_armas"
    t.integer "calibre"
    t.integer "deslocamento"
  end

  create_table "a2022540eats", id: false, force: :cascade do |t|
    t.text "name"
    t.text "pizza"
  end

  create_table "a2022540frequents", id: false, force: :cascade do |t|
    t.text "name"
    t.text "pizzeria"
  end

  create_table "a2022540navio", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.string "classe", limit: 50
    t.integer "ano_lancto"
  end

  create_table "a2022540person", id: false, force: :cascade do |t|
    t.text "name"
    t.integer "age"
    t.text "gender"
  end

  create_table "a2022540resultado", primary_key: ["nome_navio", "nome_batalha"], force: :cascade do |t|
    t.string "nome_navio", limit: 50, null: false
    t.string "nome_batalha", limit: 50, null: false
    t.string "result", limit: 10
  end

  create_table "a2022540serves", id: false, force: :cascade do |t|
    t.text "pizzeria"
    t.text "pizza"
    t.decimal "price"
  end

  create_table "a2028379batalha", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.integer "data"
  end

  create_table "a2028379classe", primary_key: "classe", id: :string, limit: 50, force: :cascade do |t|
    t.string "tipo", limit: 10
    t.string "pais", limit: 50
    t.integer "numero_armas"
    t.integer "calibre"
    t.integer "deslocamento"
  end

  create_table "a2028379navio", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.string "classe", limit: 50
    t.integer "ano_lancto"
  end

  create_table "a2028379resultado", primary_key: ["nome_navio", "nome_batalha"], force: :cascade do |t|
    t.string "nome_navio", limit: 50, null: false
    t.string "nome_batalha", limit: 50, null: false
    t.string "result", limit: 10
  end

  create_table "a2090325_alvaras", primary_key: "numero_do_alvara", id: :bigint, default: nil, force: :cascade do |t|
    t.string "endereco", limit: 200
    t.integer "numero"
  end

  create_table "a2090325_alvaras1", id: false, force: :cascade do |t|
    t.string "endereco", limit: 200
    t.integer "numero"
    t.serial "id", null: false
  end

  create_table "a2090325_alvaras2", id: false, force: :cascade do |t|
    t.string "endereco", limit: 200
    t.string "numero", limit: 100
    t.serial "id", null: false
  end

  create_table "a2090325_alvaras3", id: false, force: :cascade do |t|
    t.string "nome_empresarial", limit: 200
    t.string "inicio_atividade", limit: 50
    t.string "numero_do_alvara", limit: 100
    t.string "nome_da_empresa", limit: 150
    t.string "data_emissao", limit: 50
    t.string "data_expiracao", limit: 50
    t.string "atividade_principal", limit: 150
    t.string "atividade_secundaria1", limit: 150
    t.string "atividade_secundaria2", limit: 150
    t.string "endereco", limit: 200
    t.string "numero", limit: 100
    t.string "unidade", limit: 100
    t.string "andar", limit: 100
    t.string "complemento", limit: 100
    t.string "bairro", limit: 100
    t.string "cep", limit: 50
    t.serial "id", null: false
  end

  create_table "a2090325_alvaras4", id: false, force: :cascade do |t|
    t.string "nome_empresarial", limit: 200
    t.string "inicio_atividade", limit: 50
    t.string "numero_do_alvara", limit: 100
    t.string "nome_da_empresa", limit: 150
    t.string "data_emissao", limit: 50
    t.string "data_expiracao", limit: 50
    t.string "atividade_principal", limit: 150
    t.string "atividade_secundaria1", limit: 150
    t.string "atividade_secundaria2", limit: 150
    t.string "endereco", limit: 200
    t.string "numero", limit: 100
    t.string "unidade", limit: 100
    t.string "andar", limit: 100
    t.string "complemento", limit: 100
    t.string "bairro", limit: 100
    t.string "cep", limit: 50
    t.float "geo1"
    t.float "geo2"
    t.serial "id", null: false
    t.geometry "geom", limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "a2090325_alvaras5", id: false, force: :cascade do |t|
    t.string "nome_empresarial", limit: 200
    t.string "inicio_atividade", limit: 50
    t.string "numero_do_alvara", limit: 100
    t.string "nome_da_empresa", limit: 150
    t.string "data_emissao", limit: 50
    t.string "data_expiracao", limit: 50
    t.string "atividade_principal", limit: 150
    t.string "atividade_secundaria1", limit: 150
    t.string "atividade_secundaria2", limit: 150
    t.string "endereco", limit: 200
    t.string "numero", limit: 100
    t.string "unidade", limit: 100
    t.string "andar", limit: 100
    t.string "complemento", limit: 100
    t.string "bairro", limit: 100
    t.string "cep", limit: 50
    t.float "latitude"
    t.float "longitude"
    t.geometry "geom", limit: {:srid=>0, :type=>"geometry"}
    t.serial "id", null: false
  end

  create_table "a2090325_antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "a2090325_estradas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "a2090325_guarda_municipal", primary_key: "ocorrencia_codigo", id: :integer, default: nil, force: :cascade do |t|
    t.integer "atendimento_ano"
    t.string "atendimento_bairro_nome", limit: 50
    t.string "equipamento_urbano_nome", limit: 100
    t.string "flag_equipamento_urbano", limit: 30
    t.string "flag_flagrante", limit: 30
    t.string "logradouro_nome", limit: 100
    t.string "natureza1_defesa_civil", limit: 30
    t.string "natureza1_descricao", limit: 50
    t.string "natureza2_defesa_civil", limit: 30
    t.string "natureza2_descricao", limit: 100
    t.string "natureza3_defesa_civil", limit: 30
    t.string "natureza3_descricao", limit: 100
    t.string "natureza4_defesa_civil", limit: 30
    t.string "natureza4_descricao", limit: 100
    t.string "natureza5_defesa_civil", limit: 30
    t.string "natureza5_descricao", limit: 100
    t.string "subcategoria1_descricao", limit: 100
    t.string "subcategoria2_descricao", limit: 100
    t.string "subcategoria3_descricao", limit: 100
    t.string "subcategoria4_descricao", limit: 100
    t.string "subcategoria5_descricao", limit: 100
    t.integer "ocorrencia_ano"
    t.date "ocorrencia_data"
    t.string "ocorrencia_dia_semana", limit: 30
    t.time "ocorrencia_hora"
    t.integer "ocorrencia_mes"
    t.string "operacao_descricao", limit: 100
    t.string "origem_chamado_descricao", limit: 100
    t.string "regional_fato_nome", limit: 100
    t.string "secretaria_nome", limit: 100
    t.string "secretaria_sigla", limit: 30
    t.string "servico_nome", limit: 100
    t.string "situacao_equipe_descricao", limit: 100
    t.integer "numero_protocolo_156"
  end

  create_table "a2090325_guarda_municipal1", primary_key: "ocorrencia_codigo", id: :integer, default: nil, force: :cascade do |t|
    t.string "atendimento_ano", limit: 100
    t.string "atendimento_bairro_nome", limit: 50
    t.string "equipamento_urbano_nome", limit: 100
    t.string "flag_equipamento_urbano", limit: 30
    t.string "flag_flagrante", limit: 30
    t.string "logradouro_nome", limit: 100
    t.string "natureza1_defesa_civil", limit: 30
    t.string "natureza1_descricao", limit: 50
    t.string "natureza2_defesa_civil", limit: 30
    t.string "natureza2_descricao", limit: 100
    t.string "natureza3_defesa_civil", limit: 30
    t.string "natureza3_descricao", limit: 100
    t.string "natureza4_defesa_civil", limit: 30
    t.string "natureza4_descricao", limit: 100
    t.string "natureza5_defesa_civil", limit: 30
    t.string "natureza5_descricao", limit: 100
    t.string "subcategoria1_descricao", limit: 100
    t.string "subcategoria2_descricao", limit: 100
    t.string "subcategoria3_descricao", limit: 100
    t.string "subcategoria4_descricao", limit: 100
    t.string "subcategoria5_descricao", limit: 100
    t.string "ocorrencia_ano", limit: 100
    t.string "ocorrencia_data", limit: 100
    t.string "ocorrencia_dia_semana", limit: 30
    t.string "ocorrencia_hora", limit: 100
    t.string "ocorrencia_mes", limit: 100
    t.string "operacao_descricao", limit: 100
    t.string "origem_chamado_descricao", limit: 100
    t.string "regional_fato_nome", limit: 100
    t.string "secretaria_nome", limit: 100
    t.string "secretaria_sigla", limit: 30
    t.string "servico_nome", limit: 100
    t.string "situacao_equipe_descricao", limit: 100
    t.string "numero_protocolo_156", limit: 100
  end

  create_table "a2090325_guarda_municipal2", primary_key: "ocorrencia_codigo", id: :integer, default: nil, force: :cascade do |t|
    t.string "atendimento_ano", limit: 100
    t.string "atendimento_bairro_nome", limit: 100
    t.string "equipamento_urbano_nome", limit: 100
    t.string "flag_equipamento_urbano", limit: 100
    t.string "flag_flagrante", limit: 100
    t.string "logradouro_nome", limit: 100
    t.string "natureza1_defesa_civil", limit: 100
    t.string "natureza1_descricao", limit: 100
    t.string "natureza2_defesa_civil", limit: 100
    t.string "natureza2_descricao", limit: 100
    t.string "natureza3_defesa_civil", limit: 100
    t.string "natureza3_descricao", limit: 100
    t.string "natureza4_defesa_civil", limit: 100
    t.string "natureza4_descricao", limit: 100
    t.string "natureza5_defesa_civil", limit: 100
    t.string "natureza5_descricao", limit: 100
    t.string "subcategoria1_descricao", limit: 100
    t.string "subcategoria2_descricao", limit: 100
    t.string "subcategoria3_descricao", limit: 100
    t.string "subcategoria4_descricao", limit: 100
    t.string "subcategoria5_descricao", limit: 100
    t.string "ocorrencia_ano", limit: 100
    t.string "ocorrencia_data", limit: 100
    t.string "ocorrencia_dia_semana", limit: 30
    t.string "ocorrencia_hora", limit: 100
    t.string "ocorrencia_mes", limit: 100
    t.string "operacao_descricao", limit: 100
    t.string "origem_chamado_descricao", limit: 100
    t.string "regional_fato_nome", limit: 100
    t.string "secretaria_nome", limit: 100
    t.string "secretaria_sigla", limit: 100
    t.string "servico_nome", limit: 100
    t.string "situacao_equipe_descricao", limit: 100
    t.string "numero_protocolo_156", limit: 100
  end

  create_table "a2090325_lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "a2090325_lotes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incoradora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "a2090325_residencias", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "cod", limit: 32
    t.string "id", limit: 16
    t.decimal "nmorador"
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "a2090325_rios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"line_string"}
  end

  create_table "a2090325_uso", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "uso", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "a2122545_alvara", id: false, force: :cascade do |t|
    t.string "nome_empresarial", limit: 100
    t.date "data_inicio_atividade"
    t.integer "numero_do_alvara"
    t.string "nome_da_empresa", limit: 100
    t.date "data_emissao"
    t.date "data_expiracao"
    t.string "atividade_principal", limit: 200
    t.string "atividade_secundaria1", limit: 200
    t.string "atividade_secundaria2", limit: 200
    t.string "endereco", limit: 255
    t.string "numero", limit: 15
    t.string "unidate", limit: 15
    t.string "andar", limit: 15
    t.string "complemento", limit: 200
    t.string "bairro", limit: 50
    t.string "cep", limit: 8
    t.string "cidade", limit: 50
    t.string "estado", limit: 50
    t.float "latitude"
    t.float "longitude"
    t.string "atividade_principal_agregada", limit: 100
    t.string "tipo_modificado", limit: 255
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.index ["atividade_principal_agregada"], name: "a2122545_alvara_atividade_principal_agregada_idx"
    t.index ["the_geom"], name: "a2122545_alvara_the_geom_idx", using: :gist
  end

  create_table "a2122545_antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "a2122545_crime_linha_de_onibus", id: :serial, force: :cascade do |t|
    t.integer "ano"
    t.bigint "cod"
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
  end

  create_table "a2122545_crimes", id: false, force: :cascade do |t|
    t.integer "ano"
    t.bigint "codboletim"
    t.datetime "dataocorrencia"
    t.integer "anofato"
    t.integer "mesfato"
    t.string "codpenalgeo", limit: 9
    t.string "logradouro", limit: 100
    t.string "numero", limit: 10
    t.float "longitude"
    t.float "latitude"
    t.geometry "the_geom", limit: {:srid=>4326, :type=>"st_point"}
  end

  create_table "a2122545_crimes_alvara", id: :serial, force: :cascade do |t|
    t.integer "ano"
    t.bigint "cod"
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
  end

  create_table "a2122545_crimes_terminal", id: :serial, force: :cascade do |t|
    t.integer "ano"
    t.bigint "cod"
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
  end

  create_table "a2122545_curitiba", id: false, force: :cascade do |t|
    t.integer "ano"
    t.bigint "codboletim"
    t.datetime "dataocorrencia"
    t.integer "anofato"
    t.integer "mesfato"
    t.string "codpenalgeo", limit: 9
    t.string "logradouro", limit: 100
    t.string "numero", limit: 10
    t.float "longitude"
    t.float "latitude"
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.index ["ano"], name: "ano_idx"
    t.index ["codboletim"], name: "codboletim_idx"
    t.index ["the_geom"], name: "a2122545_curitiba_geom_idx", using: :gist
  end

  create_table "a2122545_curitiba_crime_final", id: false, force: :cascade do |t|
    t.string "idcrime", limit: 15
    t.float "longitude"
    t.float "latitude"
  end

  create_table "a2122545_curitiba_dados_crime", id: false, force: :cascade do |t|
    t.string "bairro", limit: 50
    t.integer "anofato"
    t.string "chave_boletim", limit: 15
    t.integer "diafato"
    t.string "diasemanafato", limit: 15
    t.datetime "fatoinical"
    t.string "mesfato", limit: 15
    t.string "natureza1", limit: 15
  end

  create_table "a2122545_cwbcrimes", id: false, force: :cascade do |t|
    t.string "idcrime", limit: 15
    t.datetime "dataocorrencia"
    t.integer "anoocorrencia"
    t.string "mesocorrencia", limit: 15
    t.integer "diaocorrencia"
    t.string "diasemanaocorrencia", limit: 15
    t.string "bairro", limit: 50
    t.float "longitude"
    t.float "latitude"
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.index ["anoocorrencia"], name: "a2122545_cwbcrimes_idxano"
    t.index ["idcrime"], name: "a2122545_cwbcrimes_idxcrime"
    t.index ["the_geom"], name: "a2122545_cwbcrimes_idx", using: :gist
  end

  create_table "a2122545_cwbcrimes_barigui", id: false, force: :cascade do |t|
    t.string "idcrime", limit: 15
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
  end

  create_table "a2122545_cwbcrimes_cemiterio", id: false, force: :cascade do |t|
    t.string "idcrime", limit: 15
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
  end

  create_table "a2122545_cwbcrimes_turismo", id: false, force: :cascade do |t|
    t.string "idcrime", limit: 15
    t.string "linha", limit: 100
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
  end

  create_table "a2122545_elem_rep_edificacoes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "tipo", limit: 50
    t.string "nome", limit: 100
    t.string "texto_mapa", limit: 50
    t.decimal "escala_rep"
    t.decimal "shape_area"
    t.decimal "shape_len"
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"multi_polygon"}
  end

  create_table "a2122545_esaudemedicos", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.date "data_atend"
    t.string "data_nasc", limit: 50
    t.string "sexo", limit: 1
    t.integer "cod_tipo_unidade"
    t.string "tipo_unidade", limit: 50
    t.string "cod_unidade", limit: 200
    t.string "desc_unidade", limit: 200
    t.string "cod_proc", limit: 200
    t.string "desc_proc", limit: 200
    t.string "cod_cbo", limit: 200
    t.string "desc_cbo", limit: 200
    t.string "cod_cid", limit: 200
    t.string "desc_cid", limit: 200
    t.string "sol_exames", limit: 200
    t.integer "qtde_farm_ctba"
    t.integer "qtde_disp_farm_ctba"
    t.integer "qtde_med_n_padron"
    t.string "encaminhameneto", limit: 10
    t.string "area_atuacao", limit: 300
    t.string "des_intern", limit: 10
    t.string "data_intern", limit: 50
    t.string "est_sol_intern", limit: 200
    t.string "est_dest", limit: 200
    t.string "cid_intern", limit: 200
    t.string "trat_dom", limit: 200
    t.string "abast", limit: 200
    t.string "energia", limit: 200
    t.string "tipo_hab", limit: 200
    t.string "dest_lixo", limit: 200
    t.string "fezes", limit: 200
    t.string "comodos", limit: 200
    t.string "caso_doenca", limit: 200
    t.string "grupo_comunitario", limit: 200
    t.string "meio_comunic", limit: 200
    t.string "meio_transp", limit: 200
    t.string "municipio", limit: 200
    t.string "bairro", limit: 200
  end

  create_table "a2122545_estradas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "a2122545_geometries", id: false, force: :cascade do |t|
    t.string "name"
    t.geometry "geom", limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "a2122545_lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "a2122545_linha_de_onibus", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "objectid", precision: 10
    t.string "layer", limit: 254
    t.string "cd_categor", limit: 25
    t.string "categoria", limit: 100
    t.string "cd_linha", limit: 25
    t.string "linha", limit: 100
    t.string "data", limit: 25
    t.string "fonte", limit: 50
    t.string "seta_senti", limit: 50
    t.decimal "shape_len"
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"multi_line_string"}
    t.index ["linha"], name: "a2122545_linha_de_onibus_idx"
    t.index ["the_geom"], name: "a2122545_linha_de_onibus_the_geom_idx", using: :gist
  end

  create_table "a2122545_lotes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incoradora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
    t.float "area"
  end

  create_table "a2122545_lotes_difference", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incorporadora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_polygon"}
  end

  create_table "a2122545_lotes_semcobertura", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "numlote", limit: 30
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "a2122545_lotes_union", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incorporadora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_polygon"}
  end

  create_table "a2122545_mapa_uso", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "uso", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "a2122545_parques_e_bosques", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "codigo", limit: 10
    t.string "codigo_smm", limit: 10
    t.string "tipo", limit: 50
    t.string "nome", limit: 100
    t.string "texto_mapa", limit: 254
    t.decimal "shape_area"
    t.decimal "shape_len"
    t.geometry "geom", limit: {:srid=>29192, :type=>"multi_polygon"}
  end

  create_table "a2122545_residencias", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "cod", limit: 32
    t.string "id", limit: 16
    t.decimal "nmorador"
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "a2122545_rios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"line_string"}
  end

  create_table "a2122545_terminal_de_transporte", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "cd_equi"
    t.string "tema", limit: 50
    t.decimal "id_equip", precision: 10
    t.string "equipament", limit: 150
    t.string "tipo_equi", limit: 60
    t.string "dep_admin", limit: 60
    t.string "pre_nome", limit: 150
    t.string "nome", limit: 150
    t.string "sigla_equi", limit: 50
    t.string "conveniado", limit: 3
    t.string "nome_abrev", limit: 60
    t.string "nome_mapa", limit: 111
    t.string "cd_rua", limit: 5
    t.string "nome_rua", limit: 106
    t.string "nome_ruano", limit: 150
    t.string "num_pred", limit: 15
    t.string "compl_end", limit: 254
    t.string "indfiscal", limit: 20
    t.decimal "cd_bairro", precision: 10
    t.string "bairro", limit: 30
    t.string "quadr_equi", limit: 4
    t.decimal "cd_regiona", precision: 10
    t.string "regional", limit: 16
    t.string "func_manha", limit: 3
    t.string "func_tarde", limit: 3
    t.string "func_noite", limit: 3
    t.string "func_24hr", limit: 3
    t.string "telefone", limit: 15
    t.string "ramal", limit: 15
    t.string "email", limit: 60
    t.string "site", limit: 150
    t.date "dt_inaugur"
    t.string "desativado", limit: 1
    t.string "observacao", limit: 254
    t.string "fonte", limit: 250
    t.date "dt_atualiz"
    t.decimal "coord_e"
    t.decimal "coord_n"
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.index ["nome"], name: "nome_idx"
    t.index ["the_geom"], name: "a2122545_terminal_de_transporte_geom_idx", using: :gist
  end

  create_table "a2122545sigesguarda_ruas", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "rua", limit: 100
    t.float "x"
    t.float "y"
    t.geometry "the_geom", limit: {:srid=>29192, :type=>"st_point"}
  end

  create_table "a756ucs", id: :serial, force: :cascade do |t|
    t.geometry "geom", limit: {:srid=>4618, :type=>"multi_polygon"}
    t.string "id_uc0", limit: 254
    t.string "nome_uc1", limit: 254
    t.string "id_wcmc2", limit: 254
    t.string "categori3", limit: 254
    t.string "grupo4", limit: 254
    t.string "esfera5", limit: 254
    t.string "ano_cria6", limit: 254
    t.string "gid7", limit: 254
    t.string "qualidad8", limit: 254
    t.string "ato_lega9", limit: 254
    t.string "dt_ultim10", limit: 254
    t.string "codigo_u11", limit: 254
    t.string "nome_org12", limit: 254
    t.index ["geom"], name: "a756ucs_geom_idx", using: :gist
    t.index ["geom"], name: "a756ucs_geom_idx1", using: :gist
    t.index ["nome_uc1"], name: "a756ucs_nome_uc1_idx"
    t.index ["nome_uc1"], name: "a756ucs_nome_uc1_idx1"
  end

  create_table "a_veiculo", primary_key: ["nome_veiculo_marca", "nome_modelo_veiculo"], force: :cascade do |t|
    t.string "nome_veiculo_marca", limit: 100, null: false
    t.string "nome_modelo_veiculo", limit: 100, null: false
    t.string "especie", limit: 100
    t.string "ind_veiculo_estrangeiro", limit: 1
    t.string "uf_placa", limit: 2
  end

  create_table "acidente", id: :integer, default: nil, force: :cascade do |t|
    t.string "dia_semana", limit: 20, null: false
    t.time "horario", null: false
    t.integer "ordem_tipo_acidente", null: false
    t.string "causa_acidente", limit: 20, null: false
    t.string "causa_principal", limit: 3, null: false
    t.string "classificacao_acidente", limit: 20, null: false
    t.integer "mortos", null: false
    t.integer "latitude", null: false
    t.integer "longitude", null: false
  end

  create_table "aeroporto7", primary_key: "iata_aero", id: :string, limit: 10, force: :cascade do |t|
    t.string "icao_aero", limit: 10
    t.string "nome_aero", limit: 50
    t.integer "longitude"
    t.integer "latitude"
    t.integer "altitude"
    t.string "nome_capital", limit: 50
  end

  create_table "airlines", primary_key: "ID", id: :decimal, force: :cascade do |t|
    t.string "Name"
    t.string "Alias"
    t.string "IATA", limit: 200
    t.string "ICAO", limit: 200
    t.string "Callsign"
    t.string "Country"
    t.string "Active", limit: 200
  end

  create_table "airports", primary_key: "ID", id: :decimal, force: :cascade do |t|
    t.string "Name"
    t.string "City"
    t.string "Country"
    t.string "IATA"
    t.string "ICAO"
    t.float "Latitude"
    t.float "Longitude"
    t.float "Altitude"
    t.float "Timezone"
    t.string "DST", limit: 1
    t.string "Tz"
    t.string "Type"
    t.string "Source"
    t.geometry "geom", limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "alvara", id: false, force: :cascade do |t|
    t.string "nome_empresarial", limit: 100
    t.date "data_inicio_atividade"
    t.integer "numero_do_alvara"
    t.string "nome_da_empresa", limit: 100
    t.date "data_emissao"
    t.date "data_expiracao"
    t.string "atividade_principal", limit: 200
    t.string "atividade_secundaria1", limit: 200
    t.string "atividade_secundaria2", limit: 200
    t.string "endereco", limit: 255
    t.string "numero", limit: 15
    t.string "unidate", limit: 15
    t.string "andar", limit: 15
    t.string "complemento", limit: 200
    t.string "bairro", limit: 50
    t.string "cep", limit: 8
    t.string "cidade", limit: 50
    t.string "estado", limit: 50
    t.float "latitude"
    t.float "longitude"
    t.geometry "localidade", limit: {:srid=>0, :type=>"geometry"}
    t.string "atividade_principal_agregada", limit: 100
    t.string "tipo_modificado", limit: 255
  end

  create_table "alvara_endereco2", id: false, force: :cascade do |t|
    t.string "endereco", limit: 255
    t.string "numero", limit: 15
    t.string "bairro", limit: 50
    t.float "latitude"
    t.float "longitude"
    t.geometry "localidade", limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "alvaraatividade", id: false, force: :cascade do |t|
    t.string "atividade_principal_agregada", limit: 100
    t.string "atividade_principal", limit: 200
  end

  create_table "antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "atende", primary_key: "latitude", id: :integer, default: nil, force: :cascade do |t|
    t.integer "longitude", null: false
    t.string "delegacia", limit: 20, null: false
  end

  create_table "aviao7", primary_key: "iata_avi", id: :string, limit: 10, force: :cascade do |t|
    t.string "modelo", limit: 10
    t.string "icao_avi", limit: 10
  end

  create_table "bairro", primary_key: "nome_bairro", id: :string, limit: 100, force: :cascade do |t|
    t.float "renda_media"
    t.float "densidade_demografica"
  end

  create_table "bairroXocorr", id: false, force: :cascade do |t|
    t.string "bairro", limit: 50
    t.integer "qtdeOcorre"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.float "countxarea"
  end

  create_table "bairroarealinhas", id: false, force: :cascade do |t|
    t.integer "gid"
    t.bigint "numlinha"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.float "bairroarealinhas"
  end

  create_table "batalha", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.integer "data"
  end

  create_table "batalhaisa", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.integer "data"
  end

  create_table "batalhajota", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.integer "data"
  end

  create_table "bd2_abastecimento_agua_pr_2019", primary_key: "indice", id: :serial, force: :cascade do |t|
    t.string "regiao_geografica", limit: 50
    t.string "uf", limit: 2
    t.string "regional_de_saude", limit: 100
    t.string "municipio", limit: 100
    t.integer "codigo_ibge"
    t.string "tipo_instituicao", limit: 50
    t.string "sigla_instituicao", limit: 50
    t.string "nome_instituicao", limit: 100
    t.string "nome_esc_local_instituicao", limit: 100
    t.string "tipo_forma_abastecimento", limit: 100
    t.string "codigo_forma_abastecimento", limit: 50
    t.string "nome_forma_abastecimento", limit: 100
    t.integer "ano_referencia"
    t.date "data_registro"
    t.date "data_preenchimento"
    t.string "carro_pipa", limit: 10
    t.string "chafariz", limit: 10
    t.string "fonte", limit: 10
    t.string "cisterna", limit: 10
    t.string "canalizacao", limit: 10
    t.string "caixa_agua", limit: 10
    t.string "sem_reservacao", limit: 10
    t.string "outro_tipo_suprimento", limit: 100
    t.string "captacao_superficial", limit: 10
    t.string "captacao_subterranea", limit: 10
    t.string "captacao_agua_chuva", limit: 10
    t.string "filtracao", limit: 10
    t.string "desinfeccao", limit: 10
    t.decimal "numero_economia_residencial_perm", precision: 10, scale: 4
    t.decimal "razao_hab_domicilio", precision: 10, scale: 4
  end

  create_table "bd2_deaths", primary_key: ["location", "sex", "age", "cause", "year"], force: :cascade do |t|
    t.string "measure", limit: 15
    t.string "location", limit: 100, null: false
    t.string "sex", limit: 6, null: false
    t.string "age", limit: 15, null: false
    t.string "cause", limit: 255, null: false
    t.string "metric", limit: 15
    t.integer "year", limit: 2, null: false
    t.decimal "val", precision: 10, scale: 2
    t.decimal "upper", precision: 10, scale: 2
    t.decimal "lower", precision: 10, scale: 2
  end

  create_table "bd2_despesas_cota_parlamentar_dep_fed_2019", primary_key: "idregistro", id: :serial, force: :cascade do |t|
    t.string "txnomeparlamentar", limit: 100
    t.string "cpf", limit: 11
    t.integer "idecadastro"
    t.integer "nucarteiraparlamentar"
    t.integer "nulegislatura"
    t.string "sguf", limit: 2
    t.string "sgpartido", limit: 20
    t.integer "codlegislatura"
    t.integer "numsubcota"
    t.string "txtdescricao", limit: 100
    t.integer "numespecificacaosubcota"
    t.string "txtdescricaoespecificacao", limit: 50
    t.string "txtfornecedor", limit: 200
    t.string "txtcnpjcpf", limit: 20
    t.string "txtnumero", limit: 30
    t.integer "indtipodocumento"
    t.datetime "datemissao"
    t.decimal "vlrdocumento", precision: 10, scale: 2
    t.decimal "vlrglosa", precision: 10, scale: 2
    t.decimal "vlrliquido", precision: 10, scale: 2
    t.integer "nummes"
    t.integer "numano"
    t.integer "numparcela"
    t.string "txtpassageiro", limit: 100
    t.string "txttrecho", limit: 30
    t.integer "numlote"
    t.integer "numressarcimento"
    t.decimal "vlrrestituicao", precision: 10, scale: 2
    t.integer "nudeputadoid"
    t.integer "idedocumento"
    t.string "urldocumento", limit: 255
  end

  create_table "bd2_dia_pluviometria", primary_key: "id_dia", id: :serial, force: :cascade do |t|
    t.integer "id_estacao", null: false
    t.integer "dia"
    t.integer "mes"
    t.integer "ano"
    t.decimal "precipitacao", precision: 4, scale: 1
    t.boolean "chuva_acumulada"
    t.boolean "contem_dado"
  end

  create_table "bd2_estacao_pluviometria", id: :integer, default: nil, force: :cascade do |t|
    t.string "estacao", limit: 100
    t.string "municipio", limit: 100
    t.decimal "altitude", precision: 7, scale: 3
    t.integer "codigo"
    t.datetime "instalacao"
    t.string "bacia", limit: 100
    t.string "latitude", limit: 100
    t.string "entidade", limit: 100
    t.string "extincao", limit: 100
    t.string "sub_bacia", limit: 100
    t.string "longitude", limit: 100
    t.float "longitude_dec"
    t.float "latitude_dec"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["municipio"], name: "estacao_municipios"
  end

  create_table "bd2_karst_data", primary_key: "karst_id", id: :serial, force: :cascade do |t|
    t.datetime "karst_timestamp"
    t.float "karst_vazao"
    t.float "karst_nivel"
    t.float "karst_ndmp"
    t.integer "karst_sia"
  end

  create_table "bd2_karst_info", primary_key: "karst_sia", id: :integer, default: nil, force: :cascade do |t|
    t.string "karst_nome", limit: 128
    t.integer "karst_poco"
    t.string "karst_localidade", limit: 64
    t.decimal "karst_lat", precision: 11, scale: 8
    t.decimal "karst_lon", precision: 11, scale: 8
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["geom"], name: "index_karst_geom", using: :gist
    t.index ["karst_localidade"], name: "index_karst_localidade"
  end

  create_table "bd2_sistema_de_saude_enfermagens", id: :serial, force: :cascade do |t|
    t.string "data_atendimento", limit: 200
    t.string "data_nasc", limit: 200
    t.string "sexo", limit: 100
    t.string "codigo_tipo_unidade", limit: 100
    t.string "tipo_unidade", limit: 100
    t.string "codigo_unidade", limit: 100
    t.string "desc_unidade", limit: 100
    t.string "codigo_procedimento", limit: 100
    t.string "desc_procedimento", limit: 200
    t.string "codigo_cbo", limit: 100
    t.string "desc_cbo", limit: 100
    t.string "codigo_cid", limit: 100
    t.string "desc_cid", limit: 200
    t.string "solicitacao_exames", limit: 100
    t.string "qt_prescrita_farmacia_curitibana", limit: 100
    t.string "qt_dispensada_farmacia_curitibana", limit: 100
    t.string "qt_medicamento_nao_padronizado", limit: 100
    t.string "encaminhamento_atendimento_especialista", limit: 100
    t.string "area_atuacao", limit: 100
    t.string "ocorreu_internamento", limit: 100
    t.string "data_internamento", limit: 100
    t.string "estabelecimento_solicitante", limit: 100
    t.string "estabelecimento_destino", limit: 100
    t.string "cid_internamento", limit: 100
    t.string "tratamento_no_domicilio", limit: 100
    t.string "abastecimento", limit: 100
    t.string "energia_eletrica", limit: 100
    t.string "tipo_habitacao", limit: 100
    t.string "destino_lixo", limit: 100
    t.string "fezes_e_urina", limit: 100
    t.string "comodos_habitacao", limit: 100
    t.string "em_caso_doenca", limit: 100
    t.string "grupo_comunitario", limit: 100
    t.string "meio_comunicacao", limit: 100
    t.string "meio_transporte", limit: 100
    t.string "municipio", limit: 100
    t.string "bairro", limit: 100
    t.string "nacionalidade", limit: 100
  end

  create_table "bd2_unidades_atendimento_ativas_curitiba", id: false, force: :cascade do |t|
    t.integer "cd_equi"
    t.string "cd_local"
    t.integer "cd_tema"
    t.string "ds_tema"
    t.integer "cd_tp_equipamento"
    t.string "ds_tp_equipamento"
    t.integer "cd_subtipo_equipamento"
    t.string "ds_subtipo_equipamento"
    t.integer "cd_dep_administrativa"
    t.string "ds_dep_administrativa"
    t.string "nm_equi"
    t.string "nm_abrev_equi"
    t.integer "cd_fonte"
    t.string "fonte_fonte"
    t.string "cd_rua"
    t.string "nm_rua"
    t.string "cd_ruanaooficial"
    t.string "nm_ruanaooficial"
    t.string "numero_equi"
    t.string "complemento_equi"
    t.integer "cd_bairro"
    t.string "nm_bairro"
    t.string "quadricula_bq"
    t.integer "cd_regional"
    t.string "nm_regional"
    t.float "lat_sirgas"
    t.float "lon_sirgas"
    t.boolean "funcionamento_manha_equi"
    t.boolean "funcionamento_tarde_equi"
    t.boolean "funcionamento_noite_equi"
    t.boolean "funcionamento_24hrs_equi"
    t.string "telefone_equi"
    t.string "ramal_equi"
    t.string "email_equi"
    t.string "site_equi"
    t.string "fax_equi"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["cd_equi"], name: "indice"
    t.index ["cd_equi"], name: "indice_bd2_unidades_atendimento_ativas_curitiba"
    t.index ["geom"], name: "indice_geom", using: :gist
  end

  create_table "bd2_unidades_atendimento_ativas_curitiba_exame", id: false, force: :cascade do |t|
    t.integer "cd_equi"
    t.string "cd_local"
    t.integer "cd_tema"
    t.string "ds_tema"
    t.integer "cd_tp_equipamento"
    t.string "ds_tp_equipamento"
    t.integer "cd_subtipo_equipamento"
    t.string "ds_subtipo_equipamento"
    t.integer "cd_dep_administrativa"
    t.string "ds_dep_administrativa"
    t.string "nm_equi"
    t.string "nm_abrev_equi"
    t.integer "cd_fonte"
    t.string "fonte_fonte"
    t.string "cd_rua"
    t.string "nm_rua"
    t.string "cd_ruanaooficial"
    t.string "nm_ruanaooficial"
    t.string "numero_equi"
    t.string "complemento_equi"
    t.integer "cd_bairro"
    t.string "nm_bairro"
    t.string "quadricula_bq"
    t.integer "cd_regional"
    t.string "nm_regional"
    t.float "lat_sirgas"
    t.float "lon_sirgas"
    t.boolean "funcionamento_manha_equi"
    t.boolean "funcionamento_tarde_equi"
    t.boolean "funcionamento_noite_equi"
    t.boolean "funcionamento_24hrs_equi"
    t.string "telefone_equi"
    t.string "ramal_equi"
    t.string "email_equi"
    t.string "site_equi"
    t.string "fax_equi"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.float "lat_sirgas_2"
    t.float "lon_sirgas_2"
    t.index ["geom"], name: "indice_geom_unidades_atendimento_ativas_curitiba", using: :gist
  end

  create_table "brasil", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "estados", limit: 254
    t.string "regiao", limit: 50
    t.decimal "cod_uf"
    t.string "uf", limit: 5
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.index ["geom"], name: "brasil_geom_idx", using: :gist
  end

  create_table "capital7", primary_key: "nome_capital", id: :string, limit: 50, force: :cascade do |t|
    t.string "sigla_estado", limit: 50
    t.integer "timezone"
  end

  create_table "classeisa", primary_key: "classe", id: :string, limit: 50, force: :cascade do |t|
    t.string "tipo", limit: 10
    t.string "pais", limit: 50
    t.integer "numero_armas"
    t.integer "calibre"
    t.integer "deslocamento"
  end

  create_table "classejota", primary_key: "classe", id: :string, limit: 50, force: :cascade do |t|
    t.string "tipo", limit: 10
    t.string "pais", limit: 50
    t.integer "numero_armas"
    t.integer "calibre"
    t.integer "deslocamento"
  end

  create_table "come", primary_key: ["nome_especie", "nome_cientifico"], force: :cascade do |t|
    t.string "nome_especie", limit: 45, null: false
    t.string "nome_cientifico", limit: 45, null: false
  end

  create_table "crawling_news", primary_key: "url", id: :string, limit: 500, force: :cascade do |t|
    t.jsonb "cidades", null: false
    t.string "titulo", limit: 500, null: false
    t.string "doencas", limit: 50, array: true
    t.date "data"
    t.string "tipo", limit: 20
    t.string "tipo_predicted", limit: 20
  end

  create_table "curitibacoo", id: false, force: :cascade do |t|
    t.integer "ogc_fid"
    t.string "GEOMETRY", limit: 255
    t.string "full_id", limit: 255
    t.string "osm_id", limit: 255
    t.string "osm_type", limit: 255
    t.string "addr:city", limit: 255
    t.string "addr:housenumber", limit: 255
    t.string "addr:street", limit: 255
    t.string "amenity", limit: 255
    t.string "denomination", limit: 255
    t.string "name", limit: 255
    t.string "religion", limit: 255
    t.string "addr:postcode", limit: 255
    t.string "addr:suburb", limit: 255
    t.string "tourism", limit: 255
    t.string "capacity", limit: 255
    t.string "cuisine", limit: 255
    t.string "outdoor_seating", limit: 255
    t.string "smoking", limit: 255
    t.string "takeaway", limit: 255
    t.string "shop", limit: 255
    t.string "barrier", limit: 255
    t.string "building", limit: 255
    t.string "addr:country", limit: 255
    t.string "website", limit: 255
    t.string "phone", limit: 255
    t.string "addr:state", limit: 255
    t.string "level", limit: 255
    t.string "dispensing", limit: 255
    t.string "brand", limit: 255
    t.string "fuel:cng", limit: 255
    t.string "fuel:diesel", limit: 255
    t.string "operator", limit: 255
    t.string "atm", limit: 255
    t.string "description", limit: 255
    t.string "wheelchair", limit: 255
    t.string "rooms", limit: 255
    t.string "stars", limit: 255
    t.string "contact:email", limit: 255
    t.string "contact:phone", limit: 255
    t.string "contact:website", limit: 255
    t.string "door", limit: 255
    t.string "entrance", limit: 255
    t.string "height", limit: 255
    t.string "min_height", limit: 255
    t.string "width", limit: 255
    t.string "addr:housename", limit: 255
    t.string "diet:vegetarian", limit: 255
    t.string "short_name", limit: 255
    t.string "wikidata", limit: 255
    t.string "wikipedia:pt", limit: 255
    t.string "name:pt", limit: 255
    t.string "wikipedia", limit: 255
    t.string "alt_name", limit: 255
    t.string "int_name", limit: 255
    t.string "email", limit: 255
    t.string "payment:cash", limit: 255
    t.string "payment:credit_cards", limit: 255
    t.string "payment:debit_cards", limit: 255
    t.string "internet_access", limit: 255
    t.string "internet_access:fee", limit: 255
    t.string "delivery", limit: 255
    t.string "opening_hours", limit: 255
    t.string "wifi", limit: 255
    t.string "access", limit: 255
    t.string "survey:date", limit: 255
    t.string "bench", limit: 255
    t.string "covered", limit: 255
    t.string "highway", limit: 255
    t.string "shelter", limit: 255
    t.string "diet:vegan", limit: 255
    t.string "contact:facebook", limit: 255
    t.string "addr:door", limit: 255
    t.string "organic", limit: 255
    t.string "second_hand", limit: 255
    t.string "food", limit: 255
    t.string "office", limit: 255
    t.string "payment:bitcoin", limit: 255
    t.string "payment:coins", limit: 255
    t.string "payment:litecoin", limit: 255
    t.string "leisure", limit: 255
    t.string "emergency", limit: 255
    t.string "service", limit: 255
    t.string "service:bicycle:cleaning", limit: 255
    t.string "service:bicycle:diy", limit: 255
    t.string "service:bicycle:pump", limit: 255
    t.string "service:bicycle:rental", limit: 255
    t.string "service:bicycle:repair", limit: 255
    t.string "service:bicycle:retail", limit: 255
    t.string "service:bicycle:second_hand", limit: 255
    t.string "note_2", limit: 255
    t.string "ref", limit: 255
    t.string "bicycle", limit: 255
    t.string "foot", limit: 255
    t.string "motor_vehicle", limit: 255
    t.string "name:en", limit: 255
    t.string "pet", limit: 255
    t.string "natural", limit: 255
    t.string "survey_date", limit: 255
    t.string "brewery", limit: 255
    t.string "craft", limit: 255
    t.string "social_facility", limit: 255
    t.string "social_facility:for", limit: 255
    t.string "training", limit: 255
    t.string "service:bicycle:chain_tool", limit: 255
    t.string "country", limit: 255
    t.string "trade", limit: 255
    t.string "historic", limit: 255
    t.string "start_date", limit: 255
    t.string "drive_through", limit: 255
    t.string "fee", limit: 255
    t.string "toilets:wheelchair", limit: 255
    t.string "addr:place", limit: 255
    t.string "sport", limit: 255
    t.string "building:levels", limit: 255
    t.string "network", limit: 255
    t.string "old_name", limit: 255
    t.string "government", limit: 255
    t.string "phone_1", limit: 255
    t.string "parking", limit: 255
    t.string "payment:notes", limit: 255
    t.string "service_times", limit: 255
    t.string "desde", limit: 255
    t.string "facebook", limit: 255
    t.string "healthcare", limit: 255
    t.string "contact:instagram", limit: 255
    t.string "service:vehicle:car_repair", limit: 255
    t.string "name:ja", limit: 255
    t.string "wikimedia_commons", limit: 255
    t.string "contact:twitter", limit: 255
    t.string "healthcare:speciality", limit: 255
    t.string "bus", limit: 255
    t.string "departures_board", limit: 255
    t.string "public_transport", limit: 255
    t.string "contact:whatsapp", limit: 255
    t.string "diet:gluten_free", limit: 255
    t.string "sort_name", limit: 255
    t.string "dog", limit: 255
    t.string "name:es", limit: 255
    t.string "landuse", limit: 255
    t.string "residential", limit: 255
    t.string "x", limit: 10
    t.string "y", limit: 10
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["addr:street"], name: "curitibacoo_addr:street_idx"
  end

  create_table "departamento", primary_key: "delegacia", id: :string, limit: 20, force: :cascade do |t|
    t.string "regional", limit: 5, null: false
    t.string "uop", limit: 20, null: false
    t.string "municipio", limit: 20, null: false
    t.string "uf", limit: 2, null: false
  end

  create_table "dionei_antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "dionei_estradas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "dionei_lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "dionei_lotes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incoradora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "dionei_residencias", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "cod", limit: 32
    t.string "id", limit: 16
    t.decimal "nmorador"
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "dionei_rios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"line_string"}
  end

  create_table "dionei_uso", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "uso", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "eixo_rua_centro", id: :serial, force: :cascade do |t|
    t.geometry "geom", limit: {:srid=>5532, :type=>"multi_line_string"}
    t.string "chave", limit: 15
    t.string "codvia", limit: 8
    t.string "noinicio", limit: 5
    t.string "nofim", limit: 5
    t.string "status", limit: 100
    t.string "nmvia", limit: 254
    t.string "nmvia_ant", limit: 254
    t.string "sviario", limit: 100
    t.string "sviarioleg", limit: 254
    t.string "hierarquia", limit: 100
    t.string "status_dem", limit: 254
    t.float "cod_bairro"
    t.string "bairro_e", limit: 100
    t.string "bairro_d", limit: 100
    t.float "cod_reg"
    t.string "regional_e", limit: 100
    t.string "regional_d", limit: 100
    t.string "cep_e", limit: 10
    t.string "cep_d", limit: 10
    t.string "cep_info", limit: 254
    t.string "cep_fonte", limit: 100
    t.integer "guerra"
    t.index ["geom"], name: "sidx_eixo_rua_centro_geom", using: :gist
  end

  create_table "empresas_campo_grande_ms", id: false, force: :cascade do |t|
    t.bigint "cnpj"
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf"
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasil_08_2019", primary_key: "cnpj", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf"
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
    t.index ["capitalsocial"], name: "empresas_capitalsocial_index"
    t.index ["cep"], name: "empresas_cep_index"
    t.index ["cnaefiscal"], name: "empresas_cnaefiscal_index"
    t.index ["cnpj"], name: "empresas_cnpj_index"
    t.index ["datainicioatividade"], name: "empresas_datainicioatividade_index"
    t.index ["municipio", "cep"], name: "empresas_receita_brasil_08_2019_municipio_cep_idx"
    t.index ["municipio", "logradouro"], name: "empresas_receita_brasil_08_2019_municipio_logradouro_idx"
    t.index ["municipio"], name: "empresas_08_2019_formatado_municipio_idx"
    t.index ["porteempresa"], name: "empresas_porteempresa_index"
    t.index ["uf"], name: "empresas_receita_brasil_08_2019_uf_idx"
  end

  create_table "empresas_receita_brasil_cnaes_08_2019", primary_key: "cnpj", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "cnaesecundaria", null: false
  end

  create_table "empresas_receita_brasilp_08_2019", primary_key: "cnpj", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf"
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_ac_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_al_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_am_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_ap_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_ba_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_ce_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_df_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_es_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_ex_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_go_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_ma_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_mg_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_ms_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_mt_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_pa_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_pb_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_pe_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_pi_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_pr_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
    t.index ["municipio"], name: "empresas_receita_brasilp_pr_08_2019_municipio_idx"
  end

  create_table "empresas_receita_brasilp_rj_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_rn_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_ro_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_rr_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_rs_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_sc_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_se_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_sp_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_brasilp_to_08_2019", primary_key: ["cnpj", "uf"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf", null: false
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_receita_curitiba", id: false, force: :cascade do |t|
    t.decimal "idempresas", default: "0.0", null: false
    t.string "identificador", limit: 1
    t.string "identificadorfulldiario", limit: 1
    t.string "tipoatualizacao", limit: 1
    t.string "cnpj", limit: 14
    t.string "identificadormatrizfilial", limit: 1
    t.string "nomeempresarial", limit: 150
    t.string "nomefantasia", limit: 55
    t.string "situacaocadastral", limit: 2
    t.string "datasituacaocadastral", limit: 8
    t.string "motivosituacaocadastral", limit: 2
    t.string "nomecidadeexterior", limit: 55
    t.string "codigopais", limit: 3
    t.string "nomepais", limit: 70
    t.string "codigonaturezajuridica", limit: 4
    t.string "datainicioatividade", limit: 8
    t.string "cnaefiscal", limit: 7
    t.string "descricaotipologradouro", limit: 20
    t.string "logradouro", limit: 60
    t.string "numero", limit: 6
    t.string "complemento", limit: 156
    t.string "bairro", limit: 50
    t.string "cep", limit: 8
    t.string "uf", limit: 2
    t.string "codigomunicipal", limit: 4
    t.string "municipio", limit: 50
    t.string "dddtelefone1", limit: 4
    t.string "telefone1", limit: 8
    t.string "dddtelefone2", limit: 4
    t.string "telefone2", limit: 8
    t.string "dddfax", limit: 4
    t.string "numerofax", limit: 8
    t.string "emailcontribuinte", limit: 115
    t.string "qualificacaoresponsavel", limit: 2
    t.string "capitalsocial", limit: 14
    t.string "porteempresa", limit: 2
    t.string "opcaosimples", limit: 1
    t.string "dataopcaosimples", limit: 8
    t.string "dataexclusaosimples", limit: 8
    t.string "opcaomei", limit: 1
    t.string "situacaoespecial", limit: 23
    t.string "datasituacaoespecial", limit: 8
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.float "latitude"
    t.float "longitude"
    t.index ["cnpj"], name: "empresas_receita_cnpj_idx"
    t.index ["idempresas"], name: "empresas_receita_idempresas_idx"
  end

  create_table "empresas_receita_curitiba_08_2019", primary_key: "cnpj", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf"
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["cnaefiscal", "geom"], name: "empresas_receita_curitiba_08_2019_cnaefiscal_geom_idx"
    t.index ["cnaefiscal"], name: "empresas_receita_curitiba_08_2019_cnaefiscal_idx"
    t.index ["datainicioatividade"], name: "empresas_receita_curitiba_08_2019_datainicioatividade_idx"
    t.index ["geom"], name: "empresas_receita_curitiba_08_2019_gix", using: :gist
    t.index ["logradouro", "capitalsocial"], name: "empresas_receita_curitiba_08_2019_logradouro_capital_idx"
    t.index ["logradouro", "numero", "porteEmpresa"], name: "empresas_receita_curitiba_08_2019_logradouro_num_porte_idx"
    t.index ["logradouro", "numero"], name: "empresas_receita_curitiba_08_2019_logradouro_num_idx"
    t.index ["logradouro", "porteempresa"], name: "empresas_receita_curitiba_08_2019_logradouro_porte_idx"
    t.index ["logradouro"], name: "empresas_receita_curitiba_08_2019_logradouro_idx"
    t.index ["situacaocadastral"], name: "empresas_receita_curitiba_08_2019_situacaocadastral_idx"
  end

  create_table "empresas_rmc", id: false, force: :cascade do |t|
    t.bigint "cnpj"
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf"
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "empresas_teste", primary_key: "cnpj", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf"
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
  end

  create_table "enquadramento", primary_key: "cod_enquadramento", id: :string, limit: 10, force: :cascade do |t|
    t.date "data_inicio_vigencia"
    t.date "data_fim_vigencia"
  end

  create_table "especie", primary_key: "nome_especie", id: :string, limit: 45, force: :cascade do |t|
    t.string "nome_genero", limit: 45
    t.string "nome_popular", limit: 45
  end

  create_table "estado7", primary_key: "sigla_estado", id: :string, limit: 50, force: :cascade do |t|
    t.string "nome_estado", limit: 50
    t.string "regiao_estado", limit: 50
  end

  create_table "eventoscuritiba756", id: :serial, force: :cascade do |t|
    t.string "eve_idf", limit: 500
    t.string "eve_titulo", limit: 500
    t.string "eve_descricao", limit: 15000
    t.string "eve_publicado", limit: 500
    t.string "eve_data_inicio", limit: 500
    t.string "eve_data_termino", limit: 500
    t.string "see_str_nome", limit: 500
    t.string "eve_data_cadastro", limit: 500
    t.string "eve_local", limit: 500
    t.string "eve_endereco", limit: 500
    t.string "eve_horario", limit: 500
    t.string "eve_repetir", limit: 500
    t.string "eve_dia", limit: 500
    t.string "bai_descricao", limit: 500
    t.string "ete_descricao", limit: 500
    t.string "eti_descricao", limit: 500
    t.string "reg_descricao", limit: 500
    t.float "lat"
    t.float "lon"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
  end

  create_table "familia", primary_key: "nome_familia", id: :string, limit: 45, force: :cascade do |t|
    t.string "nome_ordem", limit: 45
    t.string "descricao_familia", limit: 1000
  end

  create_table "fazenda_urbana", id: :serial, force: :cascade do |t|
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon", :has_z=>true}
    t.string "layer", limit: 254
    t.string "codigo", limit: 10
    t.float "area"
    t.float "perimetro"
    t.string "tipo_cant", limit: 50
    t.float "longitude"
    t.float "latitude"
  end

  create_table "genero", primary_key: "nome_genero", id: :string, limit: 45, force: :cascade do |t|
    t.string "nome_familia", limit: 45
    t.string "descricao_genero", limit: 1000
  end

  create_table "giovane_geocode", id: false, force: :cascade do |t|
    t.string "rua", limit: 255
    t.string "numero", limit: 15
    t.float "latitude"
    t.float "longitude"
  end

  create_table "historico_climatico_curitiba", primary_key: "id_weather", id: :bigint, default: nil, force: :cascade do |t|
    t.bigint "maxtempc"
    t.bigint "mintempc"
    t.float "totalsnow_cm"
    t.float "sunhour"
    t.bigint "uvindex"
    t.bigint "moon_illumination"
    t.time "moonrise", precision: 0
    t.time "moonset", precision: 0
    t.time "sunrise", precision: 0
    t.time "sunset", precision: 0
    t.bigint "dewpointc"
    t.bigint "feelslikec"
    t.bigint "heatindexc"
    t.bigint "windchillc"
    t.bigint "windgustkmph"
    t.bigint "cloudcover"
    t.bigint "humidity"
    t.float "precipmm"
    t.bigint "pressure"
    t.bigint "tempc"
    t.bigint "visibility"
    t.bigint "winddirdegree"
    t.bigint "windspeedkmph"
    t.datetime "datetime", precision: 0
    t.index ["datetime"], name: "historico_climatico_curitiba_datetime_idx"
    t.index ["precipmm"], name: "historico_climatico_curitiba_precipmm_idx"
  end

  create_table "ibge_densidade_demografica", id: false, force: :cascade do |t|
    t.string "sigla_uf", limit: 255
    t.string "uf", limit: 255
    t.integer "populacao"
    t.decimal "area_km2", precision: 19, scale: 4
    t.decimal "densidade", precision: 19, scale: 4
  end

  create_table "ibge_renda_per_capita", id: false, force: :cascade do |t|
    t.string "sigla_uf", limit: 255
    t.string "uf", limit: 255
    t.decimal "rendimento", precision: 19, scale: 4
  end

  create_table "ilovemyprof", id: false, force: :cascade do |t|
    t.integer "i"
  end

  create_table "interregioes", id: false, force: :cascade do |t|
    t.string "nome", limit: 30
    t.decimal "areabairro"
    t.float "areaudh"
    t.float "areainter"
    t.geometry "geom", limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "interudh", id: false, force: :cascade do |t|
    t.float "proparea"
    t.string "nome", limit: 30
    t.decimal "shape_area"
    t.float "area"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "lim_municipio_a", id: :serial, force: :cascade do |t|
    t.geometry "geom", limit: {:srid=>4674, :type=>"multi_polygon"}
    t.string "nome", limit: 100
    t.string "nomeabrev", limit: 50
    t.string "geometriaa", limit: 4
    t.string "geocodigo", limit: 15
    t.integer "anoderefer"
    t.integer "id_produto"
    t.integer "id_element"
  end

  create_table "linha_aerea7", primary_key: "codigo_la", id: :string, limit: 10, force: :cascade do |t|
    t.string "nome_la", limit: 10
    t.string "iata_la", limit: 10
    t.string "icao_la", limit: 10
    t.string "apelido", limit: 10
    t.string "callsign", limit: 20
  end

  create_table "local", primary_key: "latitude", id: :integer, default: nil, force: :cascade do |t|
    t.string "km", limit: 20, null: false
    t.integer "br", null: false
    t.integer "longitude"
    t.string "uso_solo", limit: 3, null: false
    t.string "tipo_pista", limit: 20, null: false
    t.string "sentido_via", limit: 20, null: false
    t.string "tracado_via", limit: 20, null: false
    t.index ["longitude"], name: "local_longitude_key", unique: true
  end

  create_table "local_insetos", primary_key: ["estado", "nome_especie"], force: :cascade do |t|
    t.string "estado", limit: 2, null: false
    t.string "nome_especie", limit: 45, null: false
  end

  create_table "local_plantas", primary_key: ["estado", "nome_cientifico"], force: :cascade do |t|
    t.string "estado", limit: 2, null: false
    t.string "nome_cientifico", limit: 45, null: false
  end

  create_table "localizacao", primary_key: "estado", id: :string, limit: 2, force: :cascade do |t|
    t.string "bioma", limit: 45
  end

  create_table "mat_curitiba_enderecos_georeferenciados", id: false, force: :cascade do |t|
    t.text "street"
    t.text "housenumber"
    t.text "x"
    t.text "y"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["street", "housenumber"], name: "mat_curitiba_enderecos_georeferenciados_street_idx"
  end

  create_table "mat_openaddresses_pr_curitiba", id: false, force: :cascade do |t|
    t.string "lon", limit: 32767
    t.string "lat", limit: 32767
    t.string "NUMBER", limit: 32767
    t.string "street", limit: 32767
    t.string "unit", limit: 32767
    t.string "city", limit: 32767
    t.string "district", limit: 32767
    t.string "region", limit: 32767
    t.string "postcode", limit: 32767
    t.string "id", limit: 32767
    t.string "hash", limit: 32767
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["geom"], name: "mat_openaddresses_pr_curitiba_gix", using: :gist
    t.index ["street", "NUMBER"], name: "mat_openaddresses_pr_curitiba_street_idx"
  end

  create_table "mat_openstreetmap_curitiba_enderecos_geo", id: false, force: :cascade do |t|
    t.text "street"
    t.text "housenumber"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
  end

  create_table "mat_receita_curitiba_08_2019_cnpj_geo_sem_espaco", id: false, force: :cascade do |t|
    t.bigint "cnpj"
    t.text "logradouro"
    t.string "numero"
    t.text "street"
    t.text "housenumber"
    t.text "x"
    t.text "y"
    t.index ["cnpj"], name: "mat_receita_curitiba_08_2019_cnpj_geo_sem_espaco_cnpj_idx"
  end

  create_table "mat_receita_curitiba_08_2019_cnpj_geo_sem_espaco_novo", id: false, force: :cascade do |t|
    t.bigint "cnpj"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.text "logradouro"
    t.string "numero"
    t.index ["cnpj"], name: "mat_receita_curitiba_08_2019_cnpj_geo_sem_espaco_novo_cnpj_idx"
    t.index ["geom"], name: "sem_espaco_gix", using: :gist
    t.index ["logradouro", "numero"], name: "mat_receita_curitiba_08_2019_cnpj_geo_sem_espaco_novo_logradour"
  end

  create_table "mat_receita_empresas_08_2019_curitiba_com_coordenadas", id: false, force: :cascade do |t|
    t.bigint "cnpj"
    t.integer "identificadormatrizfilial"
    t.string "nomeempresarial"
    t.string "nomefantasia"
    t.integer "situacaocadastral"
    t.string "datasituacaocadastral"
    t.integer "motivosituacaocadastral"
    t.string "nomecidadeexterior"
    t.integer "codigopais"
    t.string "nomepais"
    t.integer "codigonaturezajuridica"
    t.string "datainicioatividade"
    t.integer "cnaefiscal"
    t.string "descricaotipologradouro"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.integer "cep"
    t.string "uf"
    t.integer "codigomunicipal"
    t.string "municipio"
    t.integer "dddtelefone1"
    t.integer "telefone1"
    t.integer "dddtelefone2"
    t.integer "telefone2"
    t.integer "dddfax"
    t.integer "numerofax"
    t.string "emailcontribuinte"
    t.integer "qualificacaoresponsavel"
    t.bigint "capitalsocial"
    t.integer "porteempresa"
    t.integer "opcaosimples"
    t.string "dataopcaosimples"
    t.string "dataexclusaosimples"
    t.string "opcaomei"
    t.string "situacaoespecial"
    t.string "datasituacaoespecial"
    t.integer "identificadorMatrizFilial"
    t.string "nomeEmpresarial", limit: 150
    t.string "nomeFantasia", limit: 55
    t.integer "situacaoCadastral"
    t.string "dataSituacaoCadastral"
    t.integer "motivoSituacaoCadastral"
    t.string "nomeCidadeExterior", limit: 55
    t.integer "codigoPais"
    t.string "nomePais", limit: 70
    t.integer "codigoNaturezaJuridica"
    t.string "dataInicioAtividade"
    t.integer "cnaeFiscal"
    t.string "descricaoTipoLogradouro", limit: 20
    t.integer "codigoMunicipal"
    t.integer "dddTelefone1"
    t.integer "dddTelefone2"
    t.integer "dddFax"
    t.integer "numeroFax"
    t.string "emailContribuinte", limit: 115
    t.integer "qualificacaoResponsavel"
    t.bigint "capitalSocial"
    t.integer "porteEmpresa"
    t.integer "opcaoSimples"
    t.string "dataOpcaoSimples"
    t.string "dataExclusaoSimples"
    t.string "opcaoMEI", limit: 1
    t.string "situacaoEspecial", limit: 23
    t.string "dataSituacaoEspecial"
    t.text "x"
    t.text "y"
    t.geometry "geo", limit: {:srid=>4326, :type=>"st_point"}
  end

  create_table "mat_receita_empresas_08_2019_curitiba_projecao_1", id: false, force: :cascade do |t|
    t.bigint "cnpj"
    t.text "logradouro"
    t.string "numero"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["cnpj"], name: "mat_receita_empresas_08_2019_curitiba_projecao_1_cnpj_idx"
    t.index ["logradouro", "numero"], name: "mat_receita_empresas_08_2019_curitiba_projecao_1_logradouro_idx"
  end

  create_table "medicao", primary_key: "med_considerada", id: :float, force: :cascade do |t|
    t.float "med_realizada"
    t.float "exc_verificado"
  end

  create_table "municipios_br", id: :integer, default: nil, force: :cascade do |t|
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.string "cd_mun", limit: 7
    t.string "nm_mun", limit: 60
    t.string "sigla_uf", limit: 2
    t.float "area_km2"
    t.integer "populacao"
  end

  create_table "navio", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.string "classe", limit: 50
    t.integer "ano_lancto"
  end

  create_table "navioisa", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.string "classe", limit: 50
    t.integer "ano_lancto"
  end

  create_table "naviojota", primary_key: "nome", id: :string, limit: 50, force: :cascade do |t|
    t.string "classe", limit: 50
    t.integer "ano_lancto"
  end

  create_table "np_cartoes_sem_onibus", id: false, force: :cascade do |t|
    t.text "codlinha"
    t.text "nomelinha"
    t.text "codveiculo"
    t.text "numerocartao"
    t.datetime "datautilizacao"
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao1"
    t.text "sexo"
    t.text "data_nascimento"
  end

  create_table "np_join_cartao_onibus", id: false, force: :cascade do |t|
    t.string "codlinha", limit: 4
    t.string "nomelinha", limit: 40
    t.string "codveiculo", limit: 10
    t.string "numerocartao", limit: 12
    t.datetime "datautilizacao"
    t.string "origem_lat", limit: 20
    t.string "origem_lng", limit: 20
    t.datetime "data"
    t.string "sexo"
    t.date "data_nascimento"
  end

  create_table "np_join_cartao_onibus1", id: false, force: :cascade do |t|
    t.string "campo", limit: 500
  end

  create_table "np_movimentacao", id: false, force: :cascade do |t|
    t.text "codlinha"
    t.text "nomelinha"
    t.text "codveiculo"
    t.text "cartao_numero"
    t.datetime "cartao_datahora"
    t.date "cartao_data"
    t.time "cartao_hora"
    t.date "cartao_data_nascimento"
    t.text "cartao_sexo"
    t.float "origem_lat"
    t.float "origem_lng"
    t.datetime "origem_datahora"
    t.float "destino_lat"
    t.float "destino_lng"
    t.datetime "destino_datahora"
    t.integer "k_05"
    t.integer "k_10"
    t.integer "k_20"
    t.integer "k_30"
    t.integer "k_40"
    t.integer "k_50"
    t.integer "k_100"
    t.integer "k_250"
    t.integer "k_500"
    t.integer "k_1000"
    t.geometry "origem", limit: {:srid=>0, :type=>"geometry"}
    t.geometry "destino", limit: {:srid=>0, :type=>"geometry"}
    t.integer "idade"
    t.text "origem_wkt"
    t.text "destino_wkt"
  end

  create_table "np_onibus2_duplicadas", id: false, force: :cascade do |t|
    t.text "veiculo"
    t.text "codlinha"
    t.text "datautilizacao"
    t.bigint "count"
  end

  create_table "np_onibus3_1", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_1_datautilizacao_idx"
  end

  create_table "np_onibus3_12", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_12_datautilizacao_idx"
  end

  create_table "np_onibus3_13", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_13_datautilizacao_idx"
  end

  create_table "np_onibus3_14", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_14_datautilizacao_idx"
  end

  create_table "np_onibus3_15", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_15_datautilizacao_idx"
  end

  create_table "np_onibus3_16", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_16_datautilizacao_idx"
  end

  create_table "np_onibus3_17", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_17_datautilizacao_idx"
  end

  create_table "np_onibus3_18", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_18_datautilizacao_idx"
  end

  create_table "np_onibus3_19", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_19_datautilizacao_idx"
  end

  create_table "np_onibus3_2", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_2_datautilizacao_idx"
  end

  create_table "np_onibus3_20", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_20_datautilizacao_idx"
  end

  create_table "np_onibus3_21", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_21_datautilizacao_idx"
  end

  create_table "np_onibus3_22", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_22_datautilizacao_idx"
  end

  create_table "np_onibus3_23", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_23_datautilizacao_idx"
  end

  create_table "np_onibus3_24", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_24_datautilizacao_idx"
  end

  create_table "np_onibus3_25", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_25_datautilizacao_idx"
  end

  create_table "np_onibus3_26", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_26_datautilizacao_idx"
  end

  create_table "np_onibus3_27", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_27_datautilizacao_idx"
  end

  create_table "np_onibus3_28", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_28_datautilizacao_idx"
  end

  create_table "np_onibus3_29", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_29_datautilizacao_idx"
  end

  create_table "np_onibus3_3", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_3_datautilizacao_idx"
  end

  create_table "np_onibus3_30", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_30_datautilizacao_idx"
  end

  create_table "np_onibus3_31", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_31_datautilizacao_idx"
  end

  create_table "np_onibus3_4", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_4_datautilizacao_idx"
  end

  create_table "np_onibus3_5", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_5_datautilizacao_idx"
  end

  create_table "np_onibus3_6", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_6_datautilizacao_idx"
  end

  create_table "np_onibus3_7", primary_key: ["veiculo", "codlinha", "datautilizacao"], force: :cascade do |t|
    t.text "veiculo", null: false
    t.text "latitude"
    t.text "longitude"
    t.datetime "datautilizacao", null: false
    t.text "codlinha", null: false
    t.integer "dia"
    t.geometry "point_geom", limit: {:srid=>29192, :type=>"st_point"}
    t.integer "hora"
    t.index ["datautilizacao"], name: "np_onibus3_7_datautilizacao_idx"
  end

  create_table "open1717464brairports", id: :decimal, force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "country"
    t.string "iata"
    t.string "icao"
    t.float "latitude"
    t.float "longitude"
    t.float "altitude"
    t.float "timezone"
    t.string "dst", limit: 1
    t.string "tz"
    t.string "type"
    t.string "source"
    t.geometry "geom", limit: {:srid=>4326, :type=>"geometry"}
    t.decimal "num_destinos"
  end

  create_table "open1717464brroutes", id: false, force: :cascade do |t|
    t.string "airline"
    t.decimal "airlineid"
    t.string "src"
    t.decimal "srcid"
    t.string "dst"
    t.decimal "dstid"
    t.string "codeshare", limit: 10
    t.decimal "stops"
    t.string "equipment"
    t.geometry "geom", limit: {:srid=>4326, :type=>"line_string"}
  end

  create_table "ordem", primary_key: "nome_ordem", id: :string, limit: 45, force: :cascade do |t|
    t.string "descricao_ordem", limit: 1000
  end

  create_table "organizador", primary_key: "org_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "org_nome", limit: 20
    t.string "org_tipo", limit: 20
  end

  create_table "parte", primary_key: "codigo_parte", id: :serial, force: :cascade do |t|
    t.string "nome_especie", limit: 45
    t.string "nome_partes", limit: 45
    t.string "url", limit: 300
  end

  create_table "pessoa", primary_key: "pesid", id: :integer, default: nil, force: :cascade do |t|
    t.string "sexo", limit: 20, null: false
    t.integer "idade", null: false
    t.string "tipo_envolvido", limit: 20, null: false
  end

  create_table "planta", primary_key: "nome_cientifico", id: :string, limit: 45, force: :cascade do |t|
    t.string "nome_popular", limit: 45
  end

  create_table "pontos_por_bairro", id: false, force: :cascade do |t|
    t.string "nome", limit: 30
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.bigint "num"
  end

  create_table "pontos_universidades", id: :serial, force: :cascade do |t|
    t.string "line_code", limit: 25
    t.string "address", limit: 254
    t.integer "stop_num"
    t.integer "seq"
    t.string "direction", limit: 100
    t.string "type", limit: 100
    t.string "street", limit: 255
    t.string "num", limit: 25
    t.float "lat"
    t.float "lon"
    t.serial "gid", null: false
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["geom"], name: "idx_pontos_universidades", using: :gist
  end

  create_table "pontosbairro", id: false, force: :cascade do |t|
    t.integer "gid"
    t.float "prop"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "pontosudh", id: false, force: :cascade do |t|
    t.integer "gid"
    t.float "prop"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "populacao", id: false, force: :cascade do |t|
    t.string "bairro", limit: 30
    t.integer "populacao"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "possui", id: :integer, default: nil, force: :cascade do |t|
    t.integer "id_veiculo", null: false
    t.integer "pesid", null: false
    t.string "estado_fisico", limit: 20, null: false
    t.string "condicao_metereologica", limit: 20, null: false
  end

  create_table "prototipo_urbs_linhas", id: false, force: :cascade do |t|
    t.bigint "id"
    t.string "cod", limit: 3
    t.string "nome", limit: 35
    t.string "somente_cartao", limit: 1
    t.string "categoria_servico", limit: 15
    t.string "nome_cor", limit: 11
    t.date "data"
  end

  create_table "prototipo_urbs_pois", id: false, force: :cascade do |t|
    t.bigint "id"
    t.string "poi_name", limit: 95
    t.string "poi_category_name", limit: 46
    t.float "poi_lat"
    t.float "poi_lon"
    t.string "poi_desc", limit: 73
    t.date "data"
  end

  create_table "prototipo_urbs_pontoslinha", id: false, force: :cascade do |t|
    t.bigint "id"
    t.string "nome", limit: 100
    t.bigint "num"
    t.float "lat"
    t.float "lon"
    t.bigint "seq"
    t.bigint "grupo"
    t.string "sentido", limit: 62
    t.string "tipo", limit: 20
    t.string "cod", limit: 3
    t.date "data"
    t.float "itinerary_id"
  end

  create_table "ra1612220_antenas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.decimal "alcance"
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "ra1612220_estradas", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "ra1612220_lago", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "ra1612220_lotes", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "incoradora", limit: 30
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
    t.float "area"
  end

  create_table "ra1612220_residencias", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "cod", limit: 32
    t.string "id", limit: 16
    t.decimal "nmorador"
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_point"}
  end

  create_table "ra1612220_rios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "nome", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"line_string"}
  end

  create_table "ra1612220_uso", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "uso", limit: 32
    t.string "id", limit: 16
    t.geometry "the_geom", limit: {:srid=>29193, :type=>"st_polygon"}
  end

  create_table "raca", id: false, force: :cascade do |t|
    t.string "bairro", limit: 30
    t.integer "brancos"
    t.integer "pretos"
    t.integer "amarelos"
    t.integer "pardos"
    t.integer "indigenas"
    t.integer "semdeclaracao"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.float "indiporpop"
    t.float "pretoporpop"
    t.float "brancoporpop"
    t.float "pardoporpop"
    t.float "amarporpop"
    t.float "sdporpop"
  end

  create_table "regiao7", primary_key: "sigla_regiao", id: :string, limit: 50, force: :cascade do |t|
    t.string "nome_regiao", limit: 50
  end

  create_table "regioesparecidasudh", id: false, force: :cascade do |t|
    t.float "st_area"
    t.string "nome", limit: 30
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "renda", id: false, force: :cascade do |t|
    t.string "bairro", limit: 30
    t.integer "renda"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
  end

  create_table "rendames", id: false, force: :cascade do |t|
    t.string "bairro", limit: 30
    t.integer "semRendimento"
    t.integer "1/4salarios"
    t.integer "1/2salarios"
    t.integer "1salario"
    t.integer "2salarios"
    t.integer "3salarios"
    t.integer "5salarios"
    t.integer "10salarios"
    t.integer "15salarios"
    t.integer "20salarios"
    t.integer "maisq20salarios"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.float "semRendimentoPOP"
    t.float "1/4salariosPOP"
    t.float "1/2salariosPOP"
    t.float "1salarioPOP"
    t.float "2salariosPOP"
    t.float "3salariosPOP"
    t.float "5salariosPOP"
    t.float "10salariosPOP"
    t.float "15salariosPOP"
    t.float "20salariosPOP"
    t.float "maisq20salariosPOP"
  end

  create_table "resultado", primary_key: ["nome_navio", "nome_batalha"], force: :cascade do |t|
    t.string "nome_navio", limit: 50, null: false
    t.string "nome_batalha", limit: 50, null: false
    t.string "result", limit: 10
  end

  create_table "resultadoisa", primary_key: ["nome_navio", "nome_batalha"], force: :cascade do |t|
    t.string "nome_navio", limit: 50, null: false
    t.string "nome_batalha", limit: 50, null: false
    t.string "result", limit: 10
  end

  create_table "resultadojota", primary_key: ["nome_navio", "nome_batalha"], force: :cascade do |t|
    t.string "nome_navio", limit: 50, null: false
    t.string "nome_batalha", limit: 50, null: false
    t.string "result", limit: 10
  end

  create_table "rf_cnae", primary_key: ["pj_documento", "pj_nome", "codigo_cnae"], force: :cascade do |t|
    t.string "pj_documento", limit: 14, null: false
    t.string "pj_nome", limit: 150, null: false
    t.string "codigo_cnae", limit: 7, null: false
  end

  create_table "rf_pessoa", primary_key: ["documento", "nome"], force: :cascade do |t|
    t.string "documento", limit: 14, null: false
    t.string "nome", limit: 150, null: false
    t.string "rua", limit: 60
    t.string "numero", limit: 6
    t.string "cep", limit: 8
    t.string "bairro", limit: 50
  end

  create_table "rf_pessoa_2", primary_key: ["documento", "nome"], force: :cascade do |t|
    t.string "documento", limit: 14, null: false
    t.string "nome", limit: 150, null: false
    t.string "rua", limit: 60
    t.string "numero", limit: 6
    t.string "cep", limit: 8
    t.string "bairro", limit: 50
  end

  create_table "rf_pessoa_fisica", primary_key: ["p_documento", "p_nome"], force: :cascade do |t|
    t.string "p_documento", limit: 14, null: false
    t.string "p_nome", limit: 150, null: false
    t.string "pais_origem", limit: 70
  end

  create_table "rf_pessoa_juridica", primary_key: ["p_documento", "p_nome"], force: :cascade do |t|
    t.string "p_documento", limit: 14, null: false
    t.string "p_nome", limit: 150, null: false
    t.date "data_inicio"
    t.string "razao_social", limit: 150
    t.decimal "capital_social", precision: 14, scale: 1
    t.integer "filial_matriz"
    t.string "cod_nat_juridica", limit: 4
    t.string "op_mei", limit: 1
    t.decimal "porte", precision: 2
  end

  create_table "rf_pessoa_juridica_2", primary_key: ["p_documento", "p_nome"], force: :cascade do |t|
    t.string "p_documento", limit: 14, null: false
    t.string "p_nome", limit: 150, null: false
    t.date "data_inicio"
    t.string "razao_social", limit: 150
    t.decimal "capital_social", precision: 14, scale: 1
    t.integer "filial_matriz"
    t.string "cod_nat_juridica", limit: 4
    t.string "op_mei", limit: 1
    t.decimal "porte", precision: 2
  end

  create_table "rf_simples", primary_key: ["pj_documento", "pj_nome"], force: :cascade do |t|
    t.string "pj_documento", limit: 14, null: false
    t.string "pj_nome", limit: 150, null: false
    t.date "data_opcao"
    t.date "data_exclusao"
  end

  create_table "rf_situacao_cadastral", primary_key: ["pj_documento", "pj_nome", "sit_data"], force: :cascade do |t|
    t.string "pj_documento", limit: 14, null: false
    t.string "pj_nome", limit: 150, null: false
    t.date "sit_data", null: false
    t.integer "motivo"
    t.integer "estado"
  end

  create_table "rf_situacao_cadastral_2", primary_key: ["pj_documento", "pj_nome", "sit_data"], force: :cascade do |t|
    t.string "pj_documento", limit: 14, null: false
    t.string "pj_nome", limit: 150, null: false
    t.date "sit_data", null: false
    t.integer "motivo"
    t.integer "estado"
  end

  create_table "rf_socio_fj", primary_key: ["documento_empresa", "nome_empresa", "documento_socio", "nome_socio"], force: :cascade do |t|
    t.string "documento_empresa", limit: 14, null: false
    t.string "nome_empresa", limit: 150, null: false
    t.string "documento_socio", limit: 14, null: false
    t.string "nome_socio", limit: 150, null: false
    t.decimal "percentual", precision: 1, scale: 1
    t.integer "qualificacao"
    t.date "data_entrada"
  end

  create_table "rf_socio_jj", primary_key: ["documento_empresa", "nome_empresa", "documento_socio", "nome_socio"], force: :cascade do |t|
    t.string "documento_empresa", limit: 14, null: false
    t.string "nome_empresa", limit: 150, null: false
    t.string "documento_socio", limit: 14, null: false
    t.string "nome_socio", limit: 150, null: false
    t.decimal "percentual", precision: 1, scale: 1
    t.integer "qualificacao"
  end

  create_table "rf_telefone", primary_key: ["documento", "nome", "telefone"], force: :cascade do |t|
    t.string "documento", limit: 14, null: false
    t.string "nome", limit: 150, null: false
    t.string "telefone", limit: 12, null: false
  end

  create_table "rm_curitiba_udh_region", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "udh_atlas", limit: 20
    t.string "regional", limit: 20
    t.string "cd_geocodm", limit: 20
    t.string "nm_municip", limit: 60
    t.geometry "geom", limit: {:srid=>0, :type=>"multi_polygon"}
    t.index ["geom"], name: "rm_curitiba_udh_region_geom_idx", using: :gist
  end

  create_table "rota7", primary_key: "codigo_rota", id: :string, limit: 10, force: :cascade do |t|
    t.string "codigo_la", limit: 10
    t.string "iata_aeroori", limit: 10
    t.string "iata_aerodest", limit: 10
    t.integer "n_paradas"
  end

  create_table "routes", id: false, force: :cascade do |t|
    t.string "Airline"
    t.decimal "AirlineID"
    t.string "Src"
    t.decimal "SrcID"
    t.string "Dst"
    t.decimal "DstID"
    t.string "Codeshare", limit: 10
    t.decimal "Stops"
    t.string "Equipment"
    t.geometry "geom", limit: {:srid=>4326, :type=>"line_string"}
  end

  create_table "ruaXocorr", id: false, force: :cascade do |t|
    t.string "rua", limit: 100
    t.integer "qtde"
    t.float "qtdeXlength"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_line_string"}
  end

  create_table "sigesguarda", id: :integer, default: nil, force: :cascade do |t|
    t.integer "ano"
    t.string "bairro", limit: 30
    t.string "referenciaurbana", limit: 100
    t.string "rua", limit: 100
    t.string "descricao", limit: 100
    t.string "subdescricao", limit: 100
    t.date "dataocorrencia"
    t.string "diaocorrencia", limit: 7
    t.time "horaocorrencia"
    t.integer "mesocorrencia"
    t.string "regional", limit: 20
    t.string "secretaria", limit: 200
    t.string "x", limit: 50
    t.string "y", limit: 50
    t.geometry "geom", limit: {:srid=>29193, :type=>"multi_line_string"}
  end

  create_table "sigesguarda_ruas", id: false, force: :cascade do |t|
    t.string "rua", limit: 100
    t.string "x", limit: 50
    t.string "y", limit: 50
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_line_string"}
  end

  create_table "socios_08_2019_formatado", primary_key: ["cnpj", "nomesocio", "cnpj_cpf_socio", "nomerepresentante", "cpfrepresentantelegal", "dataentradasociedade"], force: :cascade do |t|
    t.bigint "cnpj", null: false
    t.integer "identificadorsocio"
    t.string "nomesocio", limit: 150, null: false
    t.string "cnpj_cpf_socio", limit: 14, null: false
    t.integer "codigoqualificacaosocio"
    t.integer "percentualcapitalsocial"
    t.date "dataentradasociedade", null: false
    t.integer "codigopais"
    t.string "nomepaissocio", limit: 70
    t.string "cpfrepresentantelegal", limit: 11, null: false
    t.string "nomerepresentante", limit: 60, null: false
    t.integer "codigoqualificacaorepresentante"
    t.index ["cnpj", "cnpj_cpf_socio"], name: "socios_08_2019_formatado_cnpj_cpf_socio_idx"
    t.index ["cnpj", "dataentradasociedade"], name: "socios_08_2019_formatado_cnpj_data_idx"
    t.index ["cnpj", "nomesocio"], name: "socios_08_2019_formatado_cnpj_nomesocio_idx"
  end

  create_table "symdifudh", id: false, force: :cascade do |t|
    t.string "nome", limit: 30
    t.decimal "shape_area"
    t.float "area"
    t.geometry "st_symdifference", limit: {:srid=>0, :type=>"geometry"}
  end

  create_table "tabela", id: false, force: :cascade do |t|
    t.integer "valor"
  end

  create_table "task5_acessos_rodoviarios", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "id"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_line_string"}
    t.index ["geom"], name: "acessos_geom_idx", using: :gist
  end

  create_table "task5_contorno_ferrovia_proposto", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "entity", limit: 14
    t.string "layer", limit: 32
    t.float "elevation"
    t.float "thickness"
    t.integer "color"
    t.float "length"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_line_string"}
    t.index ["geom"], name: "contorno_ferrovia_proposto_geom_idx", using: :gist
  end

  create_table "task5_eixo_fora_cwb", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.string "municipio", limit: 30
    t.string "rua", limit: 70
    t.string "paviment", limit: 30
    t.string "iluminac", limit: 30
    t.string "distrito", limit: 60
    t.integer "cod_ibge"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_line_string"}
    t.index ["geom"], name: "eixo_fora_cwb_geom_idx", using: :gist
  end

  create_table "task5_municipiosbr", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.float "id"
    t.float "area"
    t.string "dgmungcod", limit: 7
    t.string "dgmunnome", limit: 32
    t.string "dgmunuf", limit: 2
    t.string "dgmungcodu", limit: 2
    t.string "dgmunregia", limit: 12
    t.string "dgmunmesor", limit: 34
    t.float "dgmungcodm"
    t.string "dgmunmicro", limit: 36
    t.float "dgmungcod1"
    t.string "dgmunregme", limit: 36
    t.float "dgmunlat"
    t.float "dgmunlong"
    t.string "dgmunsede", limit: 12
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.index ["geom"], name: "municipiosbr_geom_idx", using: :gist
  end

  create_table "task5_radares_lombadas_jul2012", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.integer "id", limit: 2
    t.string "via1", limit: 5
    t.string "numero", limit: 23
    t.string "address", limit: 11
    t.string "trecho", limit: 30
    t.string "equip", limit: 7
    t.string "av_add", limit: 11
    t.string "av_status", limit: 1
    t.integer "av_score"
    t.geometry "geom", limit: {:srid=>4326, :type=>"st_point"}
    t.index ["geom"], name: "radares_lombadas_jul2012_geom_idx", using: :gist
  end

  create_table "task5_rede_viaria_parana", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.float "id"
    t.float "length"
    t.integer "dir", limit: 2
    t.float "seg_len"
    t.string "type", limit: 12
    t.string "name", limit: 50
    t.string "sigla", limit: 3
    t.string "fcc", limit: 3
    t.string "acc", limit: 3
    t.integer "speed"
    t.integer "mun"
    t.string "uf", limit: 2
    t.string "tpista", limit: 4
    t.string "base", limit: 16
    t.string "classe", limit: 16
    t.integer "tipo_bas"
    t.integer "tipo_prj"
    t.float "tpbas"
    t.float "tcbas"
    t.float "tpfut"
    t.float "tcfut"
    t.string "codtrechop", limit: 10
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_line_string"}
    t.index ["geom"], name: "rede_viaria_parana_geom_idx", using: :gist
  end

  create_table "testeUDH", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.bigint "__gid"
    t.string "udh_atlas", limit: 20
    t.string "regional", limit: 20
    t.string "cd_geocodm", limit: 20
    t.string "nm_municip", limit: 60
    t.decimal "area"
    t.geometry "geom", limit: {:srid=>4291, :type=>"multi_polygon"}
    t.index ["geom"], name: "testeUDH_geom_idx", using: :gist
  end

  create_table "testeudh3", primary_key: "gid", id: :serial, force: :cascade do |t|
    t.bigint "__gid"
    t.decimal "____gid"
    t.string "udh_atlas", limit: 20
    t.string "regional", limit: 20
    t.string "cd_geocodm", limit: 20
    t.string "nm_municip", limit: 60
    t.decimal "area"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.index ["geom"], name: "testeudh3_geom_idx", using: :gist
  end

  create_table "udharealinhas", id: false, force: :cascade do |t|
    t.integer "gid"
    t.bigint "numlinha"
    t.geometry "geom", limit: {:srid=>4326, :type=>"multi_polygon"}
    t.float "udharealinhas"
  end

  create_table "veiculo", primary_key: "id_veiculo", id: :integer, default: nil, force: :cascade do |t|
    t.string "marca", limit: 20, null: false
    t.string "tipo_veiculo", limit: 20, null: false
    t.integer "ano_fabricacao", null: false
  end

  create_table "yp_movimentacao", id: false, force: :cascade do |t|
    t.date "cartao_data"
    t.time "cartao_hora"
    t.text "cartao_sexo"
    t.float "origem_lat"
    t.float "origem_lng"
    t.float "destino_lat"
    t.float "destino_lng"
    t.integer "idade"
    t.integer "bairro_origem"
    t.integer "bairro_destino"
    t.string "cartao_datahora", limit: 20
  end

  add_foreign_key "1657470_dia_pluviometria", "\"1657470_estacao_pluviometria\"", column: "id_estacao", name: "1657470_dia_pluviometria_id_estacao_fkey"
  add_foreign_key "a1508873_cnae", "a1508873_juridica", column: "j_documento", primary_key: "j_documento", name: "a1508873_cnae_j_documento_fkey"
  add_foreign_key "a1508873_fisica", "a1508873_pessoa", column: "f_documento", primary_key: "documento", name: "a1508873_fisica_f_documento_fkey"
  add_foreign_key "a1508873_juridica", "a1508873_pessoa", column: "j_documento", primary_key: "documento", name: "a1508873_juridica_j_documento_fkey"
  add_foreign_key "a1508873_simples", "a1508873_juridica", column: "j_documento", primary_key: "j_documento", name: "a1508873_simples_j_documento_fkey"
  add_foreign_key "a1508873_situacaocadastral", "a1508873_juridica", column: "j_documento", primary_key: "j_documento", name: "a1508873_situacaocadastral_j_documento_fkey"
  add_foreign_key "a1508873_sociofj", "a1508873_fisica", column: "documentosocio", primary_key: "f_documento", name: "a1508873_sociofj_documentosocio_fkey"
  add_foreign_key "a1508873_sociofj", "a1508873_juridica", column: "documentoempresa", primary_key: "j_documento", name: "a1508873_sociofj_documentoempresa_fkey"
  add_foreign_key "a1508873_sociojj", "a1508873_juridica", column: "documentoempresa", primary_key: "j_documento", name: "a1508873_sociojj_documentoempresa_fkey"
  add_foreign_key "a1508873_sociojj", "a1508873_juridica", column: "documentosocio", primary_key: "j_documento", name: "a1508873_sociojj_documentosocio_fkey"
  add_foreign_key "a1508873_telefonespessoa", "a1508873_pessoa", column: "documento", primary_key: "documento", name: "a1508873_telefonespessoa_documento_fkey"
  add_foreign_key "a1612220managers", "a1612220employee", column: "employee_name", primary_key: "employee_name", name: "a1612220managers_employee_name_fkey"
  add_foreign_key "a1612220managers", "a1612220employee", column: "manager_name", primary_key: "employee_name", name: "a1612220managers_manager_name_fkey"
  add_foreign_key "a1612220works", "a1612220company", column: "company_name", primary_key: "company_name", name: "a1612220works_company_name_fkey"
  add_foreign_key "a1612220works", "a1612220employee", column: "employee_name", primary_key: "employee_name", name: "a1612220works_employee_name_fkey"
  add_foreign_key "a1717456_historico_buscas", "a1717456_usuarios", column: "usuario_id"
  add_foreign_key "a1717464managers", "a1717464employee", column: "employee_name", primary_key: "employee_name", name: "a1717464managers_employee_name_fkey"
  add_foreign_key "a1717464works", "a1717464company", column: "company_name", primary_key: "company_name", name: "a1717464works_company_name_fkey"
  add_foreign_key "a1717464works", "a1717464employee", column: "employee_name", primary_key: "employee_name", name: "a1717464works_employee_name_fkey"
  add_foreign_key "a1718835cnae", "a1718835juridica", column: "j_documento", primary_key: "j_documento", name: "a1718835cnae_j_documento_fkey"
  add_foreign_key "a1718835fisica", "a1718835pessoa", column: "f_documento", primary_key: "documento", name: "a1718835fisica_f_documento_fkey"
  add_foreign_key "a1718835juridica", "a1718835pessoa", column: "j_documento", primary_key: "documento", name: "a1718835juridica_j_documento_fkey"
  add_foreign_key "a1718835simples", "a1718835juridica", column: "j_documento", primary_key: "j_documento", name: "a1718835simples_j_documento_fkey"
  add_foreign_key "a1718835situacao_cadastral", "a1718835juridica", column: "j_documento", primary_key: "j_documento", name: "a1718835situacao_cadastral_j_documento_fkey"
  add_foreign_key "a1718835sociofj", "a1718835fisica", column: "documento_socio", primary_key: "f_documento", name: "a1718835sociofj_documento_socio_fkey"
  add_foreign_key "a1718835sociofj", "a1718835juridica", column: "documento_empresa", primary_key: "j_documento", name: "a1718835sociofj_documento_empresa_fkey"
  add_foreign_key "a1718835sociojj", "a1718835juridica", column: "documento_empresa", primary_key: "j_documento", name: "a1718835sociojj_documento_empresa_fkey"
  add_foreign_key "a1718835sociojj", "a1718835juridica", column: "documento_socio", primary_key: "j_documento", name: "a1718835sociojj_documento_socio_fkey"
  add_foreign_key "a1718835telefones_pessoa", "a1718835pessoa", column: "documento", primary_key: "documento", name: "a1718835telefones_pessoa_documento_fkey"
  add_foreign_key "a1798855_cnae", "a1798855_pessoa_juridica", column: "pj_documento", primary_key: "p_documento", name: "a1798855_cnae_pj_documento_fkey"
  add_foreign_key "a1798855_pessoa_fisica", "a1798855_pessoa", column: "p_documento", primary_key: "documento", name: "a1798855_pessoa_fisica_p_documento_fkey"
  add_foreign_key "a1798855_pessoa_juridica", "a1798855_pessoa", column: "p_documento", primary_key: "documento", name: "a1798855_pessoa_juridica_p_documento_fkey"
  add_foreign_key "a1798855_simples", "a1798855_pessoa_juridica", column: "pj_documento", primary_key: "p_documento", name: "a1798855_simples_pj_documento_fkey"
  add_foreign_key "a1798855_situacao_cadastral", "a1798855_pessoa_juridica", column: "j_documento", primary_key: "p_documento", name: "a1798855_situacao_cadastral_j_documento_fkey"
  add_foreign_key "a1798855_socio_fj", "a1798855_pessoa_fisica", column: "documento_socio", primary_key: "p_documento", name: "a1798855_socio_fj_documento_socio_fkey"
  add_foreign_key "a1798855_socio_fj", "a1798855_pessoa_juridica", column: "documento_empresa", primary_key: "p_documento", name: "a1798855_socio_fj_documento_empresa_fkey"
  add_foreign_key "a1798855_socio_jj", "a1798855_pessoa_juridica", column: "documento_empresa", primary_key: "p_documento", name: "a1798855_socio_jj_documento_empresa_fkey"
  add_foreign_key "a1798855_socio_jj", "a1798855_pessoa_juridica", column: "documento_socio", primary_key: "p_documento", name: "a1798855_socio_jj_documento_socio_fkey"
  add_foreign_key "a1798855_telefone", "a1798855_pessoa", column: "documento", primary_key: "documento", name: "a1798855_telefone_documento_fkey"
  add_foreign_key "a1956477works", "a1956477company", column: "companyname", primary_key: "companyname", name: "a1956477works_companyname_fkey"
  add_foreign_key "a1956477works", "a1956477employees", column: "employeesname", primary_key: "employeesname", name: "a1956477works_employeesname_fkey"
  add_foreign_key "acidente", "local", column: "latitude", primary_key: "latitude", name: "acidente_latitude_fkey"
  add_foreign_key "acidente", "local", column: "longitude", primary_key: "latitude", name: "acidente_longitude_fkey"
  add_foreign_key "aeroporto7", "capital7", column: "nome_capital", primary_key: "nome_capital", name: "fk_capital7"
  add_foreign_key "atende", "departamento", column: "delegacia", primary_key: "delegacia", name: "atende_delegacia_fkey"
  add_foreign_key "atende", "local", column: "latitude", primary_key: "latitude", name: "atende_latitude_fkey"
  add_foreign_key "atende", "local", column: "longitude", primary_key: "latitude", name: "atende_longitude_fkey"
  add_foreign_key "bd2_dia_pluviometria", "bd2_estacao_pluviometria", column: "id_estacao", name: "bd2_dia_pluviometria_id_estacao_fkey"
  add_foreign_key "bd2_karst_data", "bd2_karst_info", column: "karst_sia", primary_key: "karst_sia", name: "bd2_karst_data_karst_sia_fkey"
  add_foreign_key "capital7", "estado7", column: "sigla_estado", primary_key: "sigla_estado", name: "fk_estado7"
  add_foreign_key "come", "especie", column: "nome_especie", primary_key: "nome_especie", name: "come_nome_especie_fkey"
  add_foreign_key "come", "planta", column: "nome_cientifico", primary_key: "nome_cientifico", name: "come_nome_cientifico_fkey"
  add_foreign_key "especie", "genero", column: "nome_genero", primary_key: "nome_genero", name: "especie_nome_genero_fkey"
  add_foreign_key "familia", "ordem", column: "nome_ordem", primary_key: "nome_ordem", name: "familia_nome_ordem_fkey"
  add_foreign_key "genero", "familia", column: "nome_familia", primary_key: "nome_familia", name: "genero_nome_familia_fkey"
  add_foreign_key "local_insetos", "especie", column: "nome_especie", primary_key: "nome_especie", name: "local_insetos_nome_especie_fkey"
  add_foreign_key "local_insetos", "localizacao", column: "estado", primary_key: "estado", name: "local_insetos_estado_fkey"
  add_foreign_key "local_plantas", "localizacao", column: "estado", primary_key: "estado", name: "local_plantas_estado_fkey"
  add_foreign_key "local_plantas", "planta", column: "nome_cientifico", primary_key: "nome_cientifico", name: "local_plantas_nome_cientifico_fkey"
  add_foreign_key "open1717464brroutes", "airlines", column: "airlineid", primary_key: "ID", name: "open1717464brroutes_AirlineID_fkey"
  add_foreign_key "parte", "especie", column: "nome_especie", primary_key: "nome_especie", name: "parte_nome_especie_fkey"
  add_foreign_key "possui", "acidente", column: "id", name: "possui_id_fkey"
  add_foreign_key "possui", "pessoa", column: "pesid", primary_key: "pesid", name: "possui_pesid_fkey"
  add_foreign_key "possui", "veiculo", column: "id_veiculo", primary_key: "id_veiculo", name: "possui_id_veiculo_fkey"
  add_foreign_key "rf_cnae", "rf_pessoa_juridica", column: "pj_documento", primary_key: "p_documento", name: "rf_cnae_pj_documento_fkey"
  add_foreign_key "rf_pessoa_fisica", "rf_pessoa", column: "p_documento", primary_key: "documento", name: "rf_pessoa_fisica_p_documento_fkey"
  add_foreign_key "rf_pessoa_juridica", "rf_pessoa", column: "p_documento", primary_key: "documento", name: "rf_pessoa_juridica_p_documento_fkey"
  add_foreign_key "rf_pessoa_juridica_2", "rf_pessoa_2", column: "p_documento", primary_key: "documento", name: "rf_pessoa_juridica_2_p_documento_fkey"
  add_foreign_key "rf_simples", "rf_pessoa_juridica", column: "pj_documento", primary_key: "p_documento", name: "rf_simples_pj_documento_fkey"
  add_foreign_key "rf_situacao_cadastral", "rf_pessoa_juridica", column: "pj_documento", primary_key: "p_documento", name: "rf_situacao_cadastral_pj_documento_fkey"
  add_foreign_key "rf_situacao_cadastral_2", "rf_pessoa_juridica_2", column: "pj_documento", primary_key: "p_documento", name: "rf_situacao_cadastral_2_pj_documento_fkey"
  add_foreign_key "rf_socio_fj", "rf_pessoa_fisica", column: "documento_socio", primary_key: "p_documento", name: "rf_socio_fj_documento_socio_fkey"
  add_foreign_key "rf_telefone", "rf_pessoa", column: "documento", primary_key: "documento", name: "rf_telefone_documento_fkey"
  add_foreign_key "rota7", "linha_aerea7", column: "codigo_la", primary_key: "codigo_la", name: "fk_linha_aerea7"
  add_foreign_key "routes", "airlines", column: "AirlineID", primary_key: "ID", name: "open1717464routes_AirlineID_fkey"
end
