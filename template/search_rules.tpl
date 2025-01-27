<div class="titrePage">
  <ul class="categoryActions">
    <li><a href="#" onclick="window.close();" title="{'Close this window'|@translate}">{'Close this window'|@translate}</a></li>
  </ul>
  <h2>{'Search rules'|@translate}</h2>
</div>
<div id="content">
  {if isset($INTRODUCTION) }
  <p>{$INTRODUCTION}</p>
  {/if}
  <ul>
    {if isset($search_words) }
    {foreach from=$search_words item=v}
    <li>{$v}</li>
    {/foreach}
    {/if}
    {if isset($SEARCH_TAGS_MODE) }
    <li>
    <p>{if 'AND'==$SEARCH_TAGS_MODE}{'At least one tag must match'|@translate}{else}{'At least one tag must match'|@translate}{/if}</p>
      <ul>
        {foreach from=$search_tags item=v}
        <li>{$v}</li>
        {/foreach}
      </ul>
    </li>
    {/if}
    {if isset($DATE_CREATION) }
    <li>{$DATE_CREATION}</li>
    {/if}
    {if isset($DATE_AVAILABLE) }
    <li>{$DATE_AVAILABLE}</li>
    {/if}
    {if isset($search_categories) }
    <li>
      <p>{'Albums'|@translate}</p>
      <ul>
        {foreach from=$search_categories item=v}
        <li>{$v}</li>
        {/foreach}
      </ul>
    </li>
    {/if}
  </ul>
</div> <!-- content -->
