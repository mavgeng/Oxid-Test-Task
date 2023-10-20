[{$smarty.block.parent}]

[{if $oDetailsProduct->isInstallmentExisting()}]
[{oxstyle include=$oViewConf->getModuleUrl("mavgeng_installment", "out/src/css/installment.css")}]

<div>
    <p class="variant-label">
        <strong>[{oxmultilang ident="INSTALLMENT_BANNER_TITLE"}]:</strong>
    </p>
    <button type="button" class="installment-btn-banner" data-toggle="modal" data-target="#installmentBanner"></button>
</div>

<div class="modal" id="installmentBanner">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">[{oxmultilang ident="INSTALLMENT_BANNER_TITLE"}], "[{$oDetailsProduct->oxarticles__oxtitle->value}]"</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    [{oxmultilang ident="INSTALLMENT_BANNER_PREPAYMENT"}] [{$oDetailsProduct->oxarticles__installment_prepayment->value}][{oxmultilang ident="INSTALLMENT_BANNER_CURRENCY"}]
                </p>

                <p>
                    [{oxmultilang ident="INSTALLMENT_BANNER_AFTER"}] [{$oDetailsProduct->getMonthlyPayment()}][{oxmultilang ident="INSTALLMENT_BANNER_CURRENCY"}] [{oxmultilang ident="INSTALLMENT_BANNER_FOR_MONTH"}], [{$oDetailsProduct->oxarticles__installment_count_of_months->value}] [{oxmultilang ident="INSTALLMENT_BANNER_MONTHS"}]
                </p>
            </div>
        </div>
    </div>
</div>
[{/if}]
