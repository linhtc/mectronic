{if !empty($list)}
    {foreach from=$list key=i item=item}
        <tr>
            <td>{$item.id}</td>
            <td>{$item.permission_key}</td>
            <td>{$item.permission_name}</td>
            <td>
                {if (not empty($permission['edit'])) or $permission eq 1}
                    <a href="edit/{$item.id}" onclick="window.location='edit/{$item.id}'" class="label label-info" style="cursor: pointer;">Sửa</a>
                {/if}
                {if (not empty($permission['delete'])) or $permission eq 1}
                    <a info-id="{$item.id}" info-action="delete"  class="label label-danger a-confirmation" data-toggle="confirmation" style="cursor: pointer;">Xóa</a>
                {/if}
            </td>
        </tr>
    {/foreach}
{/if}