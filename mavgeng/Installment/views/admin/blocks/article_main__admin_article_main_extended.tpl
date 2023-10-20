[{$smarty.block.parent}]
<tr>
    <td class="edittext">
        [{oxmultilang ident="INSTALLMENT_PREPAYMENT"}]
    </td>
    <td class="edittext">
        <input type="number" min="1" max="[{$edit->oxarticles__oxprice->value}]" step="1" name="editval[oxarticles__installment_prepayment]" value="[{$edit->oxarticles__installment_prepayment->value}]">
    </td>
</tr>
<tr>
    <td class="edittext">
        [{oxmultilang ident="INSTALLMENT_COUNT_OF_MONTHS"}]
    </td>
    <td>
        <input type="number" min="1" step="1" name="editval[oxarticles__installment_count_of_months]" value="[{$edit->oxarticles__installment_count_of_months->value}]">
    </td>
</tr>
