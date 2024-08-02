import SwiftUI

struct CheckboxView: View {
    @Binding var isChecked: Bool

    var body: some View {
        Button(action: {
            self.isChecked.toggle()
        }) {
            HStack {
                Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(isChecked ? .green : .red)
                Text(isChecked ? "done" : "pending")
                    .foregroundColor(.primary)
            }
            .padding(5)
            .background(RoundedRectangle(cornerRadius: 5)
                            .stroke(isChecked ? Color.green : Color.red, lineWidth: 1))
        }
        .buttonStyle(PlainButtonStyle())
    }
}
