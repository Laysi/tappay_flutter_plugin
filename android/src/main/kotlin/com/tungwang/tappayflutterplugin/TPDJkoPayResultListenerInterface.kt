package com.tungwang.tappayflutterplugin

import android.util.Log
import tech.cherri.tpdirect.api.TPDJkoPayResult
import tech.cherri.tpdirect.callback.TPDJkoPayResultListener

class TPDJkoPayResultListenerInterface: TPDJkoPayResultListener {

    var successResult: String? = null
    var failResult: String? = null

    override fun onParseSuccess(p0: TPDJkoPayResult?) {
        successResult = "{\"bankTransactionId\":\"${p0?.bankTransactionId}\", \"orderNumber\":\"${p0?.orderNumber}\", \"recTradeId\":\"${p0?.recTradeId}\", \"status\":\"${p0?.status}\"}"
        failResult = null
    }

    override fun onParseFail(p0: Int, p1: String?) {
        successResult = null
        failResult = "$p0 $p1"
    }
}