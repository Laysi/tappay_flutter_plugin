package com.tungwang.tappayflutterplugin
import android.util.Log
import com.tungwang.tappayflutterplugin.TappayflutterpluginPlugin.Companion.TAG
import tech.cherri.tpdirect.callback.TPDSamsungPayStatusListener
import android.view.View
import tech.cherri.tpdirect.callback.TPDSamsungPayGetPrimeSuccessCallback
import tech.cherri.tpdirect.callback.TPDGetPrimeFailureCallback
import tech.cherri.tpdirect.callback.dto.TPDCardDto
import tech.cherri.tpdirect.callback.dto.TPDCardInfoDto
import tech.cherri.tpdirect.callback.dto.TPDMerchantReferenceInfoDto

class TPDSamsungPayListenerInterface: View.OnClickListener, TPDSamsungPayStatusListener, TPDSamsungPayGetPrimeSuccessCallback, TPDGetPrimeFailureCallback {

    override fun onReadyToPayChecked(p0: Boolean, p1: String?) {
        if (p0) {
            Log.d(TAG, "Samsung Pay availability : $p1")
        } else {
            Log.d(TAG, "Cannot use Samsung Pay.")
        }
    }

    override fun onClick(v: View?) {
        TODO("Not yet implemented")
    }

    override fun onSuccess(
        p0: String?,
        p1: TPDCardInfoDto?,
        p2: TPDMerchantReferenceInfoDto?,
        p3: TPDCardDto?
    ) {
        TODO("Not yet implemented")
    }

    override fun onFailure(p0: Int, p1: String?) {
        TODO("Not yet implemented")
    }

}