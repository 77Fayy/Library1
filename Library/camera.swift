//
//  camera.swift
//  Library
//
//  Created by fai alradhi on 27/08/1445 AH.
//

//import SwiftUI
//import AVFoundation
//import Vision
//
//// MARK: - JumpCounterView
//struct JumpCounterView: View {
//    @StateObject private var cameraViewModel = CameraViewModel()
//    
//    var body: some View {
//        VStack {
//            if cameraViewModel.hasPermissions {
//                CameraPreview(cameraViewModel: cameraViewModel)
//                    .edgesIgnoringSafeArea(.all)
//            } else {
//                Text("Camera access is required to count jumps.")
//            }
//            Text("Jumps: \(cameraViewModel.jumpCount)")
//                .font(.title)
//                .padding()
//        }
//        .onAppear {
//            cameraViewModel.checkPermissions()
//        }
//        .alert(isPresented: $cameraViewModel.showingAlert) {
//            Alert(title: Text("Camera Permission"), message: Text("Camera access is required to count jumps."), dismissButton: .default(Text("OK")))
//        }
//    }
//}
//
//// MARK: - CameraViewModel
//class CameraViewModel: NSObject, ObservableObject, AVCaptureVideoDataOutputSampleBufferDelegate {
//    @Published var jumpCount = 0
//    @Published var hasPermissions = false
//    @Published var showingAlert = false
//    var captureSession = AVCaptureSession()
//    var previewLayer: AVCaptureVideoPreviewLayer?
//    private var sequenceHandler = VNSequenceRequestHandler()
//    private var actionModel: VNCoreMLModel?
//
//    override init() {
//        super.init()
//        // Initialize your ML model here; replace `YourModelNameHere` with your model's actual class name
//        self.actionModel = try? VNCoreMLModel(for: ActionJump().model)
//    }
//    
//    func checkPermissions() {
//        switch AVCaptureDevice.authorizationStatus(for: .video) {
//        case .authorized:
//            self.hasPermissions = true
//            self.setupAVCapture()
//        case .notDetermined:
//            AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in
//                DispatchQueue.main.async {
//                    if granted {
//                        self?.hasPermissions = true
//                        self?.setupAVCapture()
//                    } else {
//                        self?.showingAlert = true
//                    }
//                }
//            }
//        default:
//            self.showingAlert = true
//        }
//    }
//    
//    private func setupAVCapture() {
//        guard let backCamera = AVCaptureDevice.default(for: .video),
//              let input = try? AVCaptureDeviceInput(device: backCamera) else {
//            print("Unable to access back camera!")
//            return
//        }
//        captureSession.addInput(input)
//        let output = AVCaptureVideoDataOutput()
//        output.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueue"))
//        captureSession.addOutput(output)
//        captureSession.startRunning()
//    }
//    
//    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
//        guard let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer),
//              let actionModel = actionModel else { return }
//        
//        let request = VNCoreMLRequest(model: actionModel) { [weak self] request, error in
//            guard let self = self else { return }
//            if let results = request.results as? [VNClassificationObservation],
//               let topResult = results.first(where: { $0.identifier == "jumping" }) { // Updated to "jumping"
//                if topResult.confidence > 0.9 {
//                    DispatchQueue.main.async {
//                        self.jumpCount += 1
//                    }
//                }
//            }
//        }
//        try? sequenceHandler.perform([request], on: pixelBuffer)
//    }
//
//}
//
//// MARK: - CameraPreview
//struct CameraPreview: UIViewRepresentable {
//    @ObservedObject var cameraViewModel: CameraViewModel
//    
//    func makeUIView(context: Context) -> UIView {
//        let view = UIView(frame: UIScreen.main.bounds)
//        cameraViewModel.previewLayer = AVCaptureVideoPreviewLayer(session: cameraViewModel.captureSession)
//        cameraViewModel.previewLayer?.frame = view.frame
//        cameraViewModel.previewLayer?.videoGravity = .resizeAspectFill
//        view.layer.addSublayer(cameraViewModel.previewLayer!)
//        return view
//    }
//    
//    func updateUIView(_ uiView: UIView, context: Context) {}
//}
//
//// MARK: - JumpCounterView_Previews
//struct JumpCounterView_Previews: PreviewProvider {
//    static var previews: some View {
//        JumpCounterView()
//    }
//}
