<?php

namespace mavgeng\Installment\Model;


class Article extends Article_parent
{
    public function isInstallmentExisting()
    {
        if (
            $this->oxarticles__installment_prepayment->value > 0
            && $this->oxarticles__installment_count_of_months->value > 0
        ) {
            return true;
        } else {
            return false;
        }
    }

    public function getMonthlyPayment()
    {
        $price = $this->oxarticles__oxprice->value;
        $prepayment = $this->oxarticles__installment_prepayment->value;
        $remainingAmount = $price - $prepayment;
        $monthlyPayment = $remainingAmount / $this->oxarticles__installment_count_of_months->value;
        return $monthlyPayment;
    }

}
