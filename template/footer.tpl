<div id="copyright">
{if isset($debug.TIME)}
{if !is_admin()}<!--{$debug.TIME} ({$debug.NB_QUERIES} {$debug.SQL_TIME})-->{else}{'Page generated in'|@translate} {$debug.TIME} ({$debug.NB_QUERIES} {'SQL queries in'|@translate} {$debug.SQL_TIME}) - {/if}
{/if}

All works are provided under <a href="https://creativecommons.org/licenses/by-nc/4.0/" target="_blank" rel="noopener noreferrer">Creative Commons license BY-NC 4.0</a>

-<br>

{*
	Please, do not remove this copyright. If you really want to,
			contact us on http://piwigo.org to find a solution on how
			to show the origin of the script...
*}
	{'Powered by'|@translate}	<a href="{$PHPWG_URL}">Piwigo</a>
	{$VERSION}
	{if isset($CONTACT_MAIL)}
	- <a href="mailto:{$CONTACT_MAIL}?subject={'A comment from bigraccoon.ca'|@escape:url}">{'Contact by e-mail'|@translate}</a>
	{/if}
	{if isset($TOGGLE_MOBILE_THEME_URL)}
	- {'View in'|@translate} : <a href="{$TOGGLE_MOBILE_THEME_URL}">{'Mobile'|@translate}</a> | <b>{'Desktop'|@translate}</b>
	{/if}

{get_combined_scripts load='footer'}
{if isset($footer_elements)}
{foreach from=$footer_elements item=v}
{$v}
{/foreach}
{/if}
</div>{* copyright *}
{if isset($debug.QUERIES_LIST)}
<div id="debug">
{$debug.QUERIES_LIST}
</div>
{/if}
</body>
</html>