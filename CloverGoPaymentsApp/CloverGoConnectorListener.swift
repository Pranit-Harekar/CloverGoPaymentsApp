//
//  CloverGoConnectorListener.swift
//  CloverGoPaymentsApp
//
//  Created by Pranit Harekar on 8/22/19.
//  Copyright © 2019 Pranit Harekar. All rights reserved.
//

import Foundation
import GoConnector

class CloverGoConnectorListener : ICloverGoConnectorListener {
    
    weak var cloverConnector: ICloverGoConnector?
    weak var viewController: UIViewController?
    
    init(_ cloverConnector: ICloverGoConnector) {
        self.cloverConnector = cloverConnector
    }
    
    func onAidMatch(cardApplicationIdentifiers: [CLVModels.Payments.CardApplicationIdentifier]) {
        print("onAidMatch \(cardApplicationIdentifiers)")
    }
    
    func onDevicesDiscovered(devices: [CLVModels.Device.GoDeviceInfo]) {
        print("onDevicesDiscovered \(devices)")
        let choiceAlert = UIAlertController(title: "Choose your reader", message: "Please select one of the reader", preferredStyle: .actionSheet)
        for device in devices {
            let action = UIAlertAction(title: device.deviceName, style: .default, handler: {
                (action:UIAlertAction) in
                ((UIApplication.shared.delegate as! AppDelegate).cloverConnector)?.connectToBluetoothDevice(deviceInfo: device)
                
            })
            choiceAlert.addAction(action)
        }
        choiceAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (action:UIAlertAction) in
            
        }))
        
        var topController = UIApplication.shared.keyWindow!.rootViewController! as UIViewController
        while ((topController.presentedViewController) != nil) {
            topController = topController.presentedViewController!
        }
        
        if let popoverController = choiceAlert.popoverPresentationController {
            popoverController.sourceView = topController.view
            popoverController.sourceRect = CGRect(x: topController.view.bounds.midX, y: topController.view.bounds.midY, width: 0, height: 0)
        }
        
        topController.present(choiceAlert, animated:true, completion:nil)
        
    }
    
    func onDeviceInitializationEvent(event: CLVModels.Device.GoDeviceInitializationEvent) {
        print("onDeviceInitializationEvent: \(event)")
    }
    
    func onTransactionProgress(event: CLVModels.Payments.GoTransactionEvent) {
        print("onTransactionProgress \(event)")
    }
    
    func onSignatureRequired() {
        print("onSignatureRequired")
    }
    
    func onSendReceipt() {
        print("onSendReceipt")
    }
    
    func onMultiplePaymentModesAvailable(paymentModes: [CLVModels.Payments.PaymentMode]) {
        print("onMultiplePaymentModesAvailable \(paymentModes)")
    }
    
    func onKeyedCardDataRequired() {
        print("onKeyedCardDataRequired")
    }
    
    func onRetrievePendingPaymentStats(response: RetrievePendingPaymentsStatsResponse) {
        print("onRetrievePendingPaymentStats \(response)")
    }
    
    /// ICloverConnector delegate methods
    
    func onSaleResponse(_ response: SaleResponse) {
        print("onSaleResponse \(response)")
    }
    
    func onAuthResponse(_ authResponse: AuthResponse) {
        // TODO:
    }
    
    func onPreAuthResponse(_ preAuthResponse: PreAuthResponse) {
        // TODO:
    }
    
    func onCapturePreAuthResponse(_ capturePreAuthResponse: CapturePreAuthResponse) {
        // TODO:
    }
    
    func onTipAdjustAuthResponse(_ tipAdjustAuthResponse: TipAdjustAuthResponse) {
        // TODO:
    }
    
    func onVoidPaymentResponse(_ voidPaymentResponse: VoidPaymentResponse) {
        print("onSaleResponse \(voidPaymentResponse)")
    }
    
    func onRefundPaymentResponse(_ refundPaymentResponse: RefundPaymentResponse) {
        // TODO:
    }
    
    func onManualRefundResponse(_ manualRefundResponse: ManualRefundResponse) {
        // TODO:
    }
    
    func onCloseoutResponse(_ closeoutResponse: CloseoutResponse) {
        // TODO:
    }
    
    func onVerifySignatureRequest(_ signatureVerifyRequest: VerifySignatureRequest) {
        // TODO:
    }
    
    func onVaultCardResponse(_ vaultCardResponse: VaultCardResponse) {
        // TODO:
    }
    
    func onDeviceActivityStart(_ deviceEvent: CloverDeviceEvent) {
        print("onDeviceActivityStart \(deviceEvent)")
    }
    
    func onDeviceActivityEnd(_ deviceEvent: CloverDeviceEvent) {
        print("onDeviceActivityEnd \(deviceEvent)")
    }
    
    func onDeviceError(_ deviceErrorEvent: CloverDeviceErrorEvent) {
        print("onDeviceError \(deviceErrorEvent)")
    }
    
    func onDeviceConnected() {
        print("onDeviceConnected")
    }
    
    func onDeviceReady(_ merchantInfo: MerchantInfo) {
        print("onDeviceReady")
    }
    
    func onDeviceDisconnected() {
        print("onDeviceDisconnected")
    }
    
    func onConfirmPaymentRequest(_ request: ConfirmPaymentRequest) {
        // TODO:
    }
    
    func onTipAdded(_ message: TipAddedMessage) {
        // TODO:
    }
    
    func onPrintManualRefundReceipt(_ printManualRefundReceiptMessage: PrintManualRefundReceiptMessage) {
        // TODO:
    }
    
    func onPrintManualRefundDeclineReceipt(_ printManualRefundDeclineReceiptMessage: PrintManualRefundDeclineReceiptMessage) {
        // TODO:
    }
    
    func onPrintPaymentReceipt(_ printPaymentReceiptMessage: PrintPaymentReceiptMessage) {
        // TODO:
    }
    
    func onPrintPaymentDeclineReceipt(_ printPaymentDeclineReceiptMessage: PrintPaymentDeclineReceiptMessage) {
        // TODO:
    }
    
    func onPrintPaymentMerchantCopyReceipt(_ printPaymentMerchantCopyReceiptMessage: PrintPaymentMerchantCopyReceiptMessage) {
        // TODO:
    }
    
    func onPrintRefundPaymentReceipt(_ printRefundPaymentReceiptMessage: PrintRefundPaymentReceiptMessage) {
        // TODO:
    }
    
    func onRetrievePrintersResponse(_ retrievePrintersResponse: RetrievePrintersResponse) {
        // TODO:
    }
    
    func onPrintJobStatusResponse(_ printJobStatusResponse: PrintJobStatusResponse) {
        // TODO:
    }
    
    func onRetrievePendingPaymentsResponse(_ retrievePendingPaymentResponse: RetrievePendingPaymentsResponse) {
        // TODO:
    }
    
    func onReadCardDataResponse(_ readCardDataResponse: ReadCardDataResponse) {
        print("onReadCardDataResponse \(readCardDataResponse)")
    }
    
    func onCustomActivityResponse(_ customActivityResponse: CustomActivityResponse) {
        // TODO:
    }
    
    func onResetDeviceResponse(_ response: ResetDeviceResponse) {
        // TODO:
    }
    
    func onMessageFromActivity(_ response: MessageFromActivity) {
        // TODO:
    }
    
    func onRetrievePaymentResponse(_ response: RetrievePaymentResponse) {
        // TODO:
    }
    
    func onRetrieveDeviceStatusResponse(_ _response: RetrieveDeviceStatusResponse) {
        // TODO:
    }
}
