//
//  CloverConnectorListener.swift
//  CloverGoPaymentsApp
//
//  Created by Pranit Harekar on 8/22/19.
//  Copyright © 2019 Pranit Harekar. All rights reserved.
//

import Foundation
import UIKit
import GoConnector

class CloverConnectorListener : NSObject, ICloverConnectorListener, ICloverGoConnectorListener, UIAlertViewDelegate {
    
    weak var cloverConnector:ICloverConnector?
    weak var viewController:UIViewController?
    
    init(_ cloverConnector: ICloverConnector) {
        self.cloverConnector = cloverConnector
    }
    
    func onAidMatch(cardApplicationIdentifiers: [CLVModels.Payments.CardApplicationIdentifier]) {
        // TODO:
    }
    
    func onDevicesDiscovered(devices: [CLVModels.Device.GoDeviceInfo]) {
        // TODO:
    }
    
    func onDeviceInitializationEvent(event: CLVModels.Device.GoDeviceInitializationEvent) {
        // TODO:
    }
    
    func onTransactionProgress(event: CLVModels.Payments.GoTransactionEvent) {
        // TODO:
    }
    
    func onSignatureRequired() {
        // TODO:
    }
    
    func onSendReceipt() {
        // TODO:
    }
    
    func onMultiplePaymentModesAvailable(paymentModes: [CLVModels.Payments.PaymentMode]) {
        // TODO:
    }
    
    func onKeyedCardDataRequired() {
        // TODO:
    }
    
    func onRetrievePendingPaymentStats(response: RetrievePendingPaymentsStatsResponse) {
        // TODO:
    }
    
    func onSaleResponse(_ response: SaleResponse) {
        // TODO:
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
        // TODO:
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
        // TODO:
    }
    
    func onDeviceActivityEnd(_ deviceEvent: CloverDeviceEvent) {
        // TODO:
    }
    
    func onDeviceError(_ deviceErrorEvent: CloverDeviceErrorEvent) {
        // TODO:
    }
    
    func onDeviceConnected() {
        // TODO:
    }
    
    func onDeviceReady(_ merchantInfo: MerchantInfo) {
        // TODO:
    }
    
    func onDeviceDisconnected() {
        // TODO:
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
        // TODO:
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
    
    func onAidMatch(cardApplicationIdentifiers:[CLVModels.Payments.CardApplicationIdentifier]) -> Void {
        // TODO:
    }
    
    func onDevicesDiscovered(devices:[CLVModels.Device.GoDeviceInfo]) ->Void {
        // TODO:
    }
    
    func onDeviceInitializationEvent(event:CLVModels.Device.GoDeviceInitializationEvent) -> Void {
        // TODO:
    }
    
    func onTransactionProgress(event: CLVModels.Payments.GoTransactionEvent) -> Void {
        // TODO:
    }
    
    func onSignatureRequired() -> Void {
        // TODO:
    }
    
    func onSendReceipt() -> Void {
        // TODO:
    }
    
    func onMultiplePaymentModesAvailable(paymentModes:[CLVModels.Payments.PaymentMode]) -> Void {
        // TODO:
    }
    
    func onKeyedCardDataRequired() -> Void {
        // TODO:
    }
    
    func onRetrievePendingPaymentStats(response : RetrievePendingPaymentsStatsResponse) -> Void {
        // TODO:
    }
}
