<ul>
  {foreach from=$comments item=comment name=comment_loop}
  <li>
    {if isset($comment.TN_SRC)}
    <div class="illustration">
      <a href="{$comment.U_PICTURE}"><img src="{$comment.TN_SRC}" alt="{$comment.ALT}" /></a>
    </div>
    {/if}
    <div class="description">
      {if isset($comment.U_DELETE) or isset($comment.U_VALIDATE) or isset($comment.U_EDIT) }
      <ul class="actions">
	{if isset($comment.U_DELETE)}
	<li>
          <a href="{$comment.U_DELETE}" title="{'delete this comment'|@translate}" onclick="return confirm('{'Are you sure?'|@translate|@escape:javascript}');">
            [delete]
          </a>
	</li>
	{/if}
        {if isset($comment.U_EDIT) and !isset($comment.IN_EDIT)}
        <li>
          <a class="editComment" href="{$comment.U_EDIT}#edit_comment" title="{'edit this comment'|@translate}">
            [edit]
          </a>
        </li>
        {/if}
	{if isset($comment.U_VALIDATE)}
	<li>
          <a href="{$comment.U_VALIDATE}" title="{'validate this comment'|@translate}">
            [validate]
          </a>
	</li>
	{/if}
      </ul>
      {/if}
      <span class="author">{$comment.AUTHOR}</span> - <span class="date">{$comment.DATE}</span>
      {if isset($comment.IN_EDIT)}
      <a name="edit_comment"></a>
      <form  method="post" action="{$comment.U_EDIT}" class="filter" id="editComment">
        <fieldset>
          <legend>{'Edit a comment'|@translate}</legend>
          <label>{'Comment'|@translate}<textarea name="content" id="contenteditid" rows="5" cols="80">{$comment.CONTENT|@escape}</textarea></label>
          <input type="hidden" name="key" value="{$comment.KEY}">
          <input type="hidden" name="image_id" value="{$comment.IMAGE_ID|@default:$current.id}">
          <input class="submit" type="submit" value="{'Submit'|@translate}">
        </fieldset>
      </form>
      {else}
      <blockquote><div>{$comment.CONTENT}</div></blockquote>
      {/if}
    </div>
  </li>
  {/foreach}
</ul>
<div style="clear: both;"></div>
