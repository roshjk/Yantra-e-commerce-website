document.querySelector('.burger').addEventListener('click', () => {
    const navLinks = document.querySelector('.nav-links');
    const navIcons = document.querySelector('.nav-icons');
    navLinks.classList.toggle('active');
    navIcons.classList.toggle('active');
});
