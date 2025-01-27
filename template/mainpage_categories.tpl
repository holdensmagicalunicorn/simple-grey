<ul class="thumbnailCategories">
  {foreach from=$category_thumbnails item=cat}
  <li>
    <div class="illustration">
      <a href="{$cat.URL}">
        <img src="{$cat.TN_SRC}" alt="{$cat.TN_ALT}" title="{$cat.NAME|@replace:'"':' '} - {'display this album'|@translate}">
      </a>
    </div>
    <div class="description">
      <h3>
        <a href="{$cat.URL}">{$cat.NAME}</a>
        {if !empty($cat.icon_ts)}
        <img title="{$cat.icon_ts.TITLE}" src="{$ROOT_URL}{$themeconf.icon_dir}/recent{if $cat.icon_ts.IS_CHILD_DATE}_by_child{/if}.png" class="icon" alt="(!)">
        {/if}
      </h3>
      {if isset($cat.INFO_DATES) }
      <p class="thumbCatDescNfoDate">{$cat.INFO_DATES}</p>
      {/if}
      <p class="thumbCatDescNbImg">{$cat.CAPTION_NB_IMAGES}</p>
      {if not empty($cat.DESCRIPTION)}
      <p class="thumbCatDesc">{$cat.DESCRIPTION}</p>
      {/if}
    </div>
  </li>
  {/foreach}
</ul>
