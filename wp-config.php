<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'sustentabilidade' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'alexfariac' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'upr.gdZmCNJ#a@!dN+mygaSgNHrGZ;8r+I|k4&54y`5uni fO3we?HC*FJ[8A(Xi' );
define( 'SECURE_AUTH_KEY',  'mnT[F=Es;wZ%%.}*`F5IV7Rq1RFNdUu_lS}v(TOU6ee4pH>}Ke|I,<7)z;$Pah(#' );
define( 'LOGGED_IN_KEY',    'HUt%E/t5jH7)@9FQ|`cs+x.D~a;85dCFh0DqXM+t741o<L/H)77Gx7RtZ7Iu(Y_u' );
define( 'NONCE_KEY',        ' XNr[:cXJW4OgUmPs+?vo@.;P2<jDP|D[`W-tMBuV|<eS8GrL | :m+5{SFF5 t|' );
define( 'AUTH_SALT',        'c|3PYZLIa6%#TP5MoymHDbgvr 6[8+kq{nH%w0ntgwnbu.3)=Nk7l.sZwo6TXz+F' );
define( 'SECURE_AUTH_SALT', ' 7 |rnji8,BmS3gfbh; QE#..<V15[u#^ke#VH&.y6DLG|)dNDp-Supp-f2%5URU' );
define( 'LOGGED_IN_SALT',   '=fvwVFZPw<%=a^8vj^_P$6EH:Iq54[,;]>:3cf.VJ5s7Ni{UcC|RJbJ$[_xZfk;_' );
define( 'NONCE_SALT',       'Cqav!u@iO)GKg]6c]%V4ehb4si*_VYY5!)mQ&p[$__<>UDgw^T64Iw|w]KAa[@D|' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'gp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', true);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
