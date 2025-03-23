document.addEventListener("DOMContentLoaded", function () {
    const modal = document.createElement("div");
    modal.classList.add("modal");
    modal.innerHTML = `
        <span class="close">&times;</span>
        <img id="modal-image" class="modal-content" src="">
        <div class="gallery-container" id="gallery"></div>
    `;
    document.body.appendChild(modal);

    const modalImg = document.getElementById("modal-image");
    const galleryContainer = document.getElementById("gallery");
    const closeModal = modal.querySelector(".close");

    document.querySelectorAll(".room-card img").forEach(img => {
        img.addEventListener("click", function () {
            modal.style.display = "flex";
            modalImg.src = this.src;
            galleryContainer.innerHTML = ""; // Xóa thư viện ảnh cũ

            const galleryImages = this.dataset.gallery.split("|");
            galleryImages.forEach(src => {
                const imgElement = document.createElement("img");
                imgElement.src = src;
                imgElement.classList.add("gallery-img");
                imgElement.addEventListener("click", () => {
                    modalImg.src = src;
                });
                galleryContainer.appendChild(imgElement);
            });
        });
    });

    closeModal.addEventListener("click", () => {
        modal.style.display = "none";
    });

    window.addEventListener("click", event => {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    });
});
