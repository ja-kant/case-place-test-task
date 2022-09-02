let canvasModule = function () {

    let canvas;
    let canvasWidth = 1000;
    let canvasHeight = 1000;
    let rectWidth = 200;
    let rectHeight = 100;

    let canvasCenterX;
    let canvasCenterY;

    let body;
    let ctx;

    let rectRotation = 0;
    let currentRectWidth = rectWidth;
    let currentRectHeight = rectHeight;

    let newRectWidth = 300;
    let newRectHeight = 200;
    let newRectRotation = 45;

    function drawAnimation() {
        ctx.resetTransform();
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        ctx.translate(canvas.width / 2, canvas.height / 2);
        ctx.rotate(rectRotation * Math.PI / 180);
        ctx.fillRect(-currentRectWidth / 2, -currentRectHeight / 2, currentRectWidth, currentRectHeight);

        var animate = false;
        if (rectRotation < newRectRotation) {
            rectRotation += 0.47;
            animate = true;
        }
        if (currentRectWidth < newRectWidth) {
            currentRectWidth += 1;
            animate = true;
        }
        if (currentRectHeight < newRectHeight) {
            currentRectHeight += 1;
            animate = true;
        }


        if (animate) {
            window.requestAnimationFrame(drawAnimation);
        } else {
            alert('Done!');
            document.getElementById('magic_button').innerHTML = 'Run again!';
        }
    }

    function transformRectangle() {
        rectRotation = 0;
        currentRectWidth = rectWidth;
        currentRectHeight = rectHeight;

        window.requestAnimationFrame(drawAnimation);
    }

    function createCanvas() {
        canvas = document.createElement('canvas');
        canvas.width = canvasWidth;
        canvas.height = canvasHeight;
        canvas.id = 'canvas';

        canvasCenterX = canvasWidth / 2;
        canvasCenterY = canvasHeight / 2;

        canvas.classList.add("magic_canvas");
        body.appendChild(canvas);
        ctx = canvas.getContext("2d");
    }

    function drawRect() {
        ctx.fillStyle = "rgba(0, 255, 0, 0.2)";
        ctx.fillRect(canvasWidth / 2 - rectWidth / 2, canvasHeight / 2 - rectHeight / 2, rectWidth, rectHeight);
    }

    function createButton() {
        let button = document.createElement('button');
        button.innerHTML = "Let the magic happen";
        button.classList.add("magic_button");
        button.id = 'magic_button';
        button.onclick = transformRectangle;
        body.appendChild(button);
    }

    return {
        init: function () {
            body = document.getElementsByTagName("body")[0];
            createCanvas();
            drawRect();
            createButton();
        }
    };
}();






