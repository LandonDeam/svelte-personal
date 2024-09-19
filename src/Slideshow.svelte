<!-- src/Slideshow.svelte -->
<script>
  /**
  * @type {string | any[]}
  */
  export let images = []; // Array of image URLs
  let currentIndex = 0;

  function nextImage() {
    currentIndex = (currentIndex + 1) % images.length;
  }

  function prevImage() {
    currentIndex = (currentIndex - 1 + images.length) % images.length;
  }

  setInterval(nextImage, 3000); // Change image every 3 seconds
</script>

<div class="slideshow">
  <button on:click={prevImage} class="nav-button">❮</button>
  <!-- svelte-ignore a11y-img-redundant-alt -->
   <div class="image-wrapper">
      <img src={images[currentIndex]} alt="Slideshow image" class="image" />
   </div>
  <button on:click={nextImage} class="nav-button">❯</button>
</div>

<style>
  .slideshow {
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
    max-width: 100%; /* Ensure the slideshow doesn't exceed the screen width */
    padding: 0 10px; /* Add some padding to avoid touching the edges */
    box-sizing: border-box; /* Include padding in the element's total width */
  }

  .image-wrapper {
    display: flex;            /* Use flexbox for centering */
    align-items: center;      /* Center vertically */
    justify-content: center;   /* Center horizontally */
    width: 100%;
    max-width: 800px; /* Maximum width of the image wrapper */
    height: 700px; /* Fixed height for consistency */
    overflow: hidden; /* Hide overflow to maintain aspect ratio */
    position: relative; /* For positioning the image */
    border-radius: 10px;
  }

  .image {
    width: auto; /* Maintain original aspect ratio */
    height: 100%; /* Ensure the image takes full height of the wrapper */
    object-fit: cover; /* Cover the space without distortion */
    border-radius: 10px;
  }

  .nav-button {
    background: transparent;
    border: none;
    font-size: 2em;
    cursor: pointer;
    color: #ffffff; /* Adjust as needed */
    width: 30px; /* Set a fixed width for the buttons */
    height: 30px; /* Set a fixed height for the buttons */
    padding: 0; /* Remove any extra padding */
    margin: 0 5px; /* Add a small margin for spacing between buttons */
  }

  @media (max-width: 800px) {
    .nav-button {
      width: 20px; /* Adjust size for mobile */
      height: 30px; /* Adjust size for mobile */
    }

    .image-wrapper {
      height: 700px; /* Adjust height for mobile */
    }
  }
</style>
