//
//  ImportFileManager.swift
//  MusicPlayer
//
//  Created by Maxim Dmitrochenko on 12-09-2024.
//

import Foundation
import SwiftUI

/// ImportFileManager позволяет выбирать аудиофайлы и импортировать их в приложение
struct ImportFileManager: UIViewControllerRepresentable {
    
    @Binding var songs: [SongModel]
    
    /// Координатор управляет задачами между SwiftUI
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    /// Метод, который создает и настраивает UIDocumentPicker, который используется для выбора аудифайла
    func makeUIViewController(context: Context) -> some UIDocumentPickerViewController {
        /// Разрешение открытия файлов с типом public.audio (MP3, WAV), есть и другие форматы
        let picker = UIDocumentPickerViewController(documentTypes: ["public.audio"], in: .open)
        
        /// Разрешение выбрать только один файл
        picker.allowsMultipleSelection = false
        
        /// Выбор расширения файлов
        picker.shouldShowFileExtensions = true
        
        /// Установка координатора в качестве делегата
        picker.delegate = context.coordinator
        
        return picker
    }
    
    /// Метод предназначен для обновления контроллера с новыми данными. В данном случае он пуст, так как все необходимые настройки выполнены при создании
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    
    /// Координатор служит связующим звеном между UIDocumentPicker и ImportFileManager
    class Coordinator: NSObject, UIDocumentPickerDelegate {
        
        /// Ссылка на родительский компонент ImportFileManager, чтобы можно было с ним взаимодействовать
        var parent: ImportFileManager
        
        init(parent: ImportFileManager) {
            self.parent = parent
        }
        
        /// Метод, который вызывается когда пользователь выбирает документ
        /// Метод обрабатывает выбранный URL и создает песню типом SongModel и после добавляет в массив songs
        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            guard let url = urls.first, url.startAccessingSecurityScopedResource() else { return }
        }
    }
}
