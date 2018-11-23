// const uploadAttachment = (attachment) => {
//   let file = attachment.file;
//   console.log(file)
//   let form = new FormData;
//   form.append("Content-Type", file.type);
//   form.append("photo[image]", file);

//   let railsToken = document.querySelector("meta[name=csrf-token]").content
//   let xhr = new XMLHttpRequest;
//   xhr.open("POST", "/photos.json", true);
//   xhr.setRequestHeader("X-CSRF-Token", railsToken);

//   xhr.upload.onprogress = (event) => {
//     let progress = event.loaded / event.total * 100;
//     attachment.setUploadProgress(progress)
//     if (progress === 100) {
//       console.log('Make the progress bar hidden')
//     }
//   };

//   xhr.onload = () => {
//     if (xhr.status === 201) {
//       let data = JSON.parse(xhr.responseText);
//       return attachment.setAttributes({
//         url: data.image_url,
//         href: data.image_url
//       });
//     }
//   }
//   return xhr.send(form)
// }

// document.addEventListener("trix-attachment-add", (event) => {
//   let attachment = event.attachment;
//   if (attachment.file) {
//     return uploadAttachment(attachment);
//   }
// });
