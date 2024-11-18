// Function to animate banners when they come into view
document.addEventListener("DOMContentLoaded", function () {
    const banners = document.querySelectorAll('.banner');

    // Create IntersectionObserver to watch banner visibility
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            }
        });
    }, {
        threshold: 0.2
    });

    // Observe each banner
    banners.forEach(banner => {
        observer.observe(banner);
    });
});
